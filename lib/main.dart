import 'dart:convert';
import 'dart:html';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:async';
//
import 'iconPainters.dart';

void main() async {
  runApp(MyApp());
}

class DesignProperties {
  static Color primaryColor = Color.fromARGB(255, 156, 204, 101);
  static Duration updateAnimationDuration = Duration(milliseconds: 200);
  static Duration startAnimation = Duration(milliseconds: 500);
  static Duration dataExchangeFreq = Duration(milliseconds: 1000);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'greenhouse',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        buttonColor: Theme.of(context).scaffoldBackgroundColor,
        snackBarTheme: SnackBarThemeData(
            behavior: SnackBarBehavior.floating,
            contentTextStyle: TextStyle(
                color: Colors.lightGreen,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.bold),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor),
        sliderTheme: SliderThemeData(
            valueIndicatorColor: Colors.lightGreen.shade100,
            valueIndicatorTextStyle: TextStyle(
                color: Colors.lightGreen.shade900, fontFamily: "Quicksand")),
        primarySwatch: Colors.lightGreen,
      ),
      darkTheme: ThemeData(
        primaryColorDark: Colors.lightGreen.shade300,
        buttonColor: Colors.grey.shade800,
        // buttonColor: Color.fromARGB(255, 56, 56, 56),
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 18, 18),
        snackBarTheme: SnackBarThemeData(
            contentTextStyle: TextStyle(
                color: Colors.lightGreen.shade300,
                fontFamily: "Quicksand",
                fontWeight: FontWeight.bold),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.grey.shade800),
        sliderTheme: SliderThemeData(
            inactiveTickMarkColor: Colors.lightGreen.shade300,
            activeTickMarkColor: Colors.lightGreen.shade300,
            activeTrackColor: Colors.lightGreen.shade300.withOpacity(0.4),
            valueIndicatorColor: Colors.grey.shade700,
            valueIndicatorTextStyle: TextStyle(
                color: Colors.lightGreen.shade300, fontFamily: "Quicksand")),
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
     customStreamRecieve();
    });
  }

  isAdminAvailable() async {
    final response = await http.get(
        "https://greenhouse-e0870-default-rtdb.firebaseio.com/websiteControls.json");
    Map data = jsonDecode(response.body);
    if (data["isAdmin"]) {
      setState(() {
        isAdmin = true;
        isSendStreaming = true;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
        "controls are not available",
      )));
    }
  }

  customStreamRecieve() async {
    while (isRecieveStreaming) {
      final response = await http.get(
          "https://greenhouse-e0870-default-rtdb.firebaseio.com/data.json");
      Map recievedData = jsonDecode(response.body);
      setState(() {
        statusData = recievedData["Status"];
      });
      if (isFirstRun) {
        recievedData.remove("Status");
        setState(() {
          controlData = recievedData;
          isFirstRun = false;
        });
        await startAnimPlayer();
      }
      if (connCheck == statusData["connCheck"]) {
        setState(() {
          connCheckRun++;
        });
      } else if (connCheck != statusData["connCheck"]) {
        setState(() {
          connCheckRun = 0;
          connCheck = statusData["connCheck"];
        });
      }
      if (connCheckRun >= 10) {
        if (isConnectionLostSnackBarShown == false) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "greenhouse is not connected",
          )));
          setState(() {
            isConnectionLostSnackBarShown = true;
          });
        }
        setState(() {
          isConnected = false;
        });
      } else {
        if (isConnectionLostSnackBarShown == true) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "greenhouse is connected",
          )));
          setState(() {
            isConnectionLostSnackBarShown = false;
          });
        }
        setState(() {
          isConnected = true;
        });
      }
      await Future.delayed(DesignProperties.dataExchangeFreq);
    }
  }

  customStreamSend() async {
    if (isSendStreaming) {
      final response = await http.patch(
          "https://greenhouse-e0870-default-rtdb.firebaseio.com/data.json",
          headers: {'Content-Type': 'application/json; charset=UTF-8'},
          body: jsonEncode(controlData));
      if (response.statusCode != 200) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "data is not sent; http status code: " +
              response.statusCode.toString(),
        )));
      }
      // await Future.delayed(DesignProperties.dataExchangeFreq);
    }
  }

  startAnimPlayer() async {
    setState(() {
      titleOpacity = 1;
    });
    await Future.delayed(DesignProperties.startAnimation);
    setState(() {
      bodyOpacity = 1;
    });
  }

  mobileLayout(int page) {
    // return currentTab == 0
    return page == 0
        ? Column(
            key: ValueKey("1"),
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width * 0.3 -
                            MediaQuery.of(context).size.width * 0.5) /
                        3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialBoxSmall(
                      isMobileLayout: true,
                      tooltip: "temperature",
                      text: (statusData["temperature"].toString() + "°C"),
                    ),
                    MaterialBoxLarge(
                      isMobileLayout: true,
                      tooltip: "light intensity",
                      text: statusData["lightIntensity"].toString(),
                      iconOn: BulbOnSvg(
                        size: 150,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      iconOff: BulbOffSvg(
                        size: 150,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      iconSwitch: statusData["artificialLight"],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width * 0.3 -
                            MediaQuery.of(context).size.width * 0.5) /
                        3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialBoxLarge(
                      isMobileLayout: true,
                      tooltip: "soil moisture",
                      text: statusData["moisture"].toString(),
                     iconOn: WaterSvg(
                          size: 150,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        iconOff: NoWaterSvg(
                            size: 150,
                            color: Theme.of(context).primaryColorDark),
                      iconSwitch: statusData["waterPump"],
                    ),
                    MaterialBoxSmall(
                      isMobileLayout: true,
                      tooltip: "cooling",
                       iconOff: RotatingFan(isRotating: false, size: 100),
                      iconOn: RotatingFan(isRotating: true, size: 100),
                      iconSwitch: statusData["cooling"],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width * 0.3 -
                            MediaQuery.of(context).size.width * 0.5) /
                        3),
                child: AnimatedOpacity(
                  opacity: isConnected ? 0 : 1,
                  duration: DesignProperties.updateAnimationDuration,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.width * 0.3,
                    child: FlareActor(
                      "flare/connectionEr.flr",
                      animation: "idle",
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                ),
              )
            ],
          )
        : Column(
            key: ValueKey("2"),
            children: [
              GreenhouseValueController(
                isMobileLayout: true,
                title: "cooling",
                rangeLimits: [20, 30, 10],
                isAuto: controlData["CoolingControls"]["isAuto"],
                onSwitchChanged: (bool value) async {
                  setState(() {
                    controlData["CoolingControls"]["isAuto"] = value;
                  });
                  await customStreamSend();
                },
                onButtonPressed: () async {
                  setState(() {
                    controlData["CoolingControls"]["isRunning"] =
                        !controlData["CoolingControls"]["isRunning"];
                  });
                  await customStreamSend();
                },
                rangeValues: RangeValues(
                    controlData["CoolingControls"]["turnOffPoint"],
                    controlData["CoolingControls"]["turnOnPoint"]),
               manualValue: controlData["CoolingControls"]["isRunning"],
                iconOff: RotatingFan(size: 24, isRotating: false,),
                iconOn: RotatingFan(size: 24, isRotating: true,),
                onRangeChanged: (RangeValues range) async {
                  setState(() {
                    controlData["CoolingControls"]["turnOffPoint"] =
                        range.start;
                    controlData["CoolingControls"]["turnOnPoint"] = range.end;
                  });
                  await customStreamSend();
                },
              ),
              GreenhouseValueController(
                isMobileLayout: true,
                title: "artificial light",
                rangeLimits: [0, 1024, 10],
                isAuto: controlData["ALControls"]["isAuto"],
                onSwitchChanged: (bool value) async {
                  setState(() {
                    controlData["ALControls"]["isAuto"] = value;
                  });
                 await customStreamSend();
                },
                onButtonPressed: () async {
                  setState(() {
                    controlData["ALControls"]["isRunning"] =
                        !controlData["ALControls"]["isRunning"];
                  });
                  await customStreamSend();
                },
                rangeValues: RangeValues(
                    controlData["ALControls"]["turnOffPoint"],
                    controlData["ALControls"]["turnOnPoint"]),
                 manualValue: controlData["ALControls"]["isRunning"],
                iconOn: BulbOnSvg(size: 24, color: Theme.of(context).primaryColorDark,),
                iconOff: BulbOffSvg(size: 24, color: Theme.of(context).primaryColorDark,),
                onRangeChanged: (RangeValues range) async {
                  setState(() {
                    controlData["ALControls"]["turnOffPoint"] =
                        range.start.round();
                    controlData["ALControls"]["turnOnPoint"] =
                        range.end.round();
                  });
                  await customStreamSend();
                },
              ),
              GreenhouseValueController(
                isMobileLayout: true,
                title: "soil moisture",
                rangeLimits: [0, 10, 10],
                isAuto: controlData["MoistControls"]["isAuto"],
                onSwitchChanged: (bool value) async {
                  setState(() {
                    controlData["MoistControls"]["isAuto"] = value;
                  });
                 await customStreamSend();
                },
                onButtonPressed: () async {
                  setState(() {
                    controlData["MoistControls"]["isRunning"] =
                        !controlData["MoistControls"]["isRunning"];
                  });
                  await customStreamSend();
                },
                rangeValues: RangeValues(
                    controlData["MoistControls"]["turnOnPoint"],
                    controlData["MoistControls"]["turnOffPoint"]),
                    manualValue: controlData["MoistControls"]["isRunning"],
                iconOff: NoWaterSvg(size: 24, color: Theme.of(context).primaryColorDark,),
                iconOn: WaterSvg(size: 24, color: Theme.of(context).primaryColorDark,),
                onRangeChanged: (RangeValues range) async {
                  setState(() {
                    controlData["MoistControls"]["turnOnPoint"] = range.start;
                    controlData["MoistControls"]["turnOffPoint"] = range.end;
                  });
                  await customStreamSend();
                },
              )
            ],
          );
  }

  dekstopLayout(int page) {
    // return currentTab == 0
    return page == 0
        ? Column(
            key: ValueKey("1"),
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width * 0.3 -
                            MediaQuery.of(context).size.width * 0.5) /
                        10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: (MediaQuery.of(context).size.width -
                                  MediaQuery.of(context).size.width * 0.3 -
                                  MediaQuery.of(context).size.width * 0.5) /
                              10),
                      child: MaterialBoxSmall(
                        isMobileLayout: false,
                        tooltip: "temperature",
                        text: (statusData["temperature"].toString() + "°C"),
                      ),
                    ),
                    MaterialBoxLarge(
                      isMobileLayout: false,
                      tooltip: "light intensity",
                      text: statusData["lightIntensity"].toString(),
                      iconOn: BulbOnSvg(
                        size: 150,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      iconOff: BulbOffSvg(
                        size: 150,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      iconSwitch: statusData["artificialLight"],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width * 0.3 -
                            MediaQuery.of(context).size.width * 0.5) /
                        10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: (MediaQuery.of(context).size.width -
                                  MediaQuery.of(context).size.width * 0.3 -
                                  MediaQuery.of(context).size.width * 0.5) /
                              10),
                      child: MaterialBoxLarge(
                        isMobileLayout: false,
                        tooltip: "soil moisture",
                        text: statusData["moisture"].toString(),
                        iconOn: WaterSvg(
                          size: 150,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        iconOff: NoWaterSvg(
                            size: 150,
                            color: Theme.of(context).primaryColorDark),
                        iconSwitch: statusData["waterPump"],
                      ),
                    ),
                    MaterialBoxSmall(
                      isMobileLayout: false,
                      tooltip: "cooling",
                      iconOff: RotatingFan(isRotating: false, size: 100),
                      iconOn: RotatingFan(isRotating: true, size: 100),
                      iconSwitch: statusData["cooling"],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width * 0.3 -
                            MediaQuery.of(context).size.width * 0.5) /
                        10),
                child: AnimatedOpacity(
                  opacity: isConnected ? 0 : 1,
                  duration: DesignProperties.updateAnimationDuration,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    height: MediaQuery.of(context).size.width * 0.1,
                    child: FlareActor(
                      "flare/connectionEr.flr",
                      animation: "idle",
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                ),
              )
            ],
          )
        : Column(
            key: ValueKey("2"),
            children: [
              GreenhouseValueController(
                isMobileLayout: false,
                title: "cooling",
                rangeLimits: [20, 30, 10],
                isAuto: controlData["CoolingControls"]["isAuto"] == null ? false : controlData["CoolingControls"]["isAuto"],
                onSwitchChanged: (bool value) async {
                  setState(() {
                    controlData["CoolingControls"]["isAuto"] = value;
                  });
                  await customStreamSend();
                },
                onButtonPressed: (bool value) async {
                  setState(() {
                    controlData["CoolingControls"]["isRunning"] = value;
                  });
                  await customStreamSend();
                },
                rangeValues: RangeValues(
                    controlData["CoolingControls"]["turnOffPoint"],
                    controlData["CoolingControls"]["turnOnPoint"]),
                manualValue: controlData["CoolingControls"]["isRunning"],
                iconOff: RotatingFan(size: 24, isRotating: false,),
                iconOn: RotatingFan(size: 24, isRotating: true,),
                onRangeChanged: (RangeValues range) async {
                  setState(() {
                    controlData["CoolingControls"]["turnOffPoint"] =
                        range.start;
                    controlData["CoolingControls"]["turnOnPoint"] = range.end;
                  });
                  await customStreamSend();
                },
              ),
              GreenhouseValueController(
                isMobileLayout: false,
                title: "artificial light",
                rangeLimits: [0, 1024, 10],
                isAuto: controlData["ALControls"]["isAuto"],
                onSwitchChanged: (bool value) async {
                  setState(() {
                    controlData["ALControls"]["isAuto"] = value;
                  });
                  await customStreamSend();
                },
                onButtonPressed: (bool value) async {
                  setState(() {
                    controlData["ALControls"]["isRunning"] =
                        value;
                  });
                  await customStreamSend();
                },
                rangeValues: RangeValues(
                    controlData["ALControls"]["turnOffPoint"],
                    controlData["ALControls"]["turnOnPoint"]),
                manualValue: controlData["ALControls"]["isRunning"],
                iconOn: BulbOnSvg(size: 24, color: Theme.of(context).primaryColorDark,),
                iconOff: BulbOffSvg(size: 24, color: Theme.of(context).primaryColorDark,),
                onRangeChanged: (RangeValues range) async {
                  setState(() {
                    controlData["ALControls"]["turnOffPoint"] =
                        range.start.round();
                    controlData["ALControls"]["turnOnPoint"] =
                        range.end.round();
                  });
                  await customStreamSend();
                },
              ),
              GreenhouseValueController(
                isMobileLayout: false,
                title: "soil moisture",
                rangeLimits: [0, 10, 10],
                isAuto: controlData["MoistControls"]["isAuto"],
                onSwitchChanged: (bool value) async {
                  setState(() {
                    controlData["MoistControls"]["isAuto"] = value;
                  });
                  await customStreamSend();
                },
                onButtonPressed: (bool value) async {
                  setState(() {
                    controlData["MoistControls"]["isRunning"] = value;
                  });
                  await customStreamSend();
                },
                rangeValues: RangeValues(
                    controlData["MoistControls"]["turnOnPoint"],
                    controlData["MoistControls"]["turnOffPoint"]),
                manualValue: controlData["MoistControls"]["isRunning"],
                iconOff: NoWaterSvg(size: 24, color: Theme.of(context).primaryColorDark,),
                iconOn: WaterSvg(size: 24, color: Theme.of(context).primaryColorDark,),
                onRangeChanged: (RangeValues range) async {
                  setState(() {
                    controlData["MoistControls"]["turnOnPoint"] = range.start;
                    controlData["MoistControls"]["turnOffPoint"] = range.end;
                  });
                  await customStreamSend();
                },
              )
            ],
          );
  }

  bool isConnectionLostSnackBarShown = false;
  bool isSendStreaming = true;
  bool isRecieveStreaming = true;
  double bodyOpacity = 0;
  double titleOpacity = 0;
  bool isConnected = true;
  int connCheck = 0;
  int connCheckRun = 1;
  bool isFirstRun = true;
  Map statusData;
  Map controlData;

  bool isAdmin = false;
  Map websiteControls;
  int currentTab = 0;
  int adminActivator = 0;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () async {
          //   setState(() {
          //   });
          //   },
          // ),
          bottomNavigationBar: AnimatedSwitcher(
              duration: DesignProperties.updateAnimationDuration,
              child: isAdmin
                  ? BottomNavigationBar(
                      backgroundColor: Theme.of(context).buttonColor,
                      onTap: (int item) {
                        pageController.animateToPage(item,
                            duration: Duration(milliseconds: 1500),
                            curve: Curves.fastLinearToSlowEaseIn);
                        setState(() {
                          currentTab = item;
                        });
                      },
                      elevation: 5,
                      items: [
                        BottomNavigationBarItem(
                            icon: AnimatedSwitcher(
                              duration:
                                  DesignProperties.updateAnimationDuration,
                              child: Icon(
                                Icons.dashboard_rounded,
                                color: currentTab == 0
                                    ? Theme.of(context).primaryColorDark
                                    : Theme.of(context).primaryColorLight,
                                key: ValueKey(currentTab),
                              ),
                            ),
                            title: Container(),
                            tooltip: "Dashboard"),
                        BottomNavigationBarItem(
                            title: Container(),
                            icon: AnimatedSwitcher(
                              duration:
                                  DesignProperties.updateAnimationDuration,
                              child: Icon(
                                Icons.tune_rounded,
                                color: currentTab == 1
                                    ? Theme.of(context).primaryColorDark
                                    : Theme.of(context).primaryColorLight,
                                key: ValueKey(currentTab),
                              ),
                            ),
                            tooltip: "Controls")
                      ],
                    )
                  : Text("")),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: AnimatedOpacity(
              curve: Curves.ease,
              opacity: titleOpacity,
              duration: DesignProperties.startAnimation,
              child: GestureDetector(
                onLongPress: () async {
                  if (adminActivator == 2) {
                    isAdminAvailable();
                  } else {
                    setState(() {
                      adminActivator++;
                    });
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: EarthSvg(color: Theme.of(context).primaryColorDark, size: 50,)),
                    Text(
                      "greenhouse",
                      style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                          fontFamily: "Quicksand"),
                    )
                  ],
                ),
              ),
            ),
          ),
          body: AnimatedOpacity(
              curve: Curves.ease,
              duration: DesignProperties.startAnimation,
              opacity: bodyOpacity,
              // child: Center(
              //     child: statusData != null
              //         ? AnimatedSwitcher(
              //             duration: DesignProperties.updateAnimationDuration,
              //             child: MediaQuery.of(context).size.width /
              //                         MediaQuery.of(context).size.height <=
              //                     3 / 4
              //                 ? mobileLayout()
              //                 : dekstopLayout())
              //         : Container()),
              child: statusData != null
                  ? PageView(
                      controller: pageController,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        MediaQuery.of(context).size.width /
                                    MediaQuery.of(context).size.height <=
                                3 / 4
                            ? mobileLayout(0)
                            : dekstopLayout(0),
                        MediaQuery.of(context).size.width /
                                    MediaQuery.of(context).size.height <=
                                3 / 4
                            ? mobileLayout(1)
                            : dekstopLayout(1),
                      ],
                    )
                  : Container())),
    );
  }
}

class MaterialBoxSmall extends StatelessWidget {
  final bool isMobileLayout;
  final String text;
  final String tooltip;
  final Widget iconOn;
  final Widget iconOff;
  final bool iconSwitch;

  MaterialBoxSmall(
      {Key key,
      this.text,
      @required this.isMobileLayout,
      this.tooltip,
      this.iconOff,
      this.iconOn,
      this.iconSwitch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: isMobileLayout
                ? MediaQuery.of(context).size.width * 0.3
                : MediaQuery.of(context).size.width * 0.1,
            height: isMobileLayout
                ? MediaQuery.of(context).size.width * 0.3
                : MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
                border: Theme.of(context).primaryColorDark ==
                        Colors.lightGreen.shade300
                    ? Border.all(width: 0)
                    : null,
                color: Theme.of(context).buttonColor,
                borderRadius: BorderRadius.circular(13)),
            child: Padding(
              padding: EdgeInsets.all(isMobileLayout
                  ? MediaQuery.of(context).size.width * 0.3 * 0.2
                  : MediaQuery.of(context).size.width * 0.15 * 0.15),
              child: Center(
                  child: AnimatedSwitcher(
                      duration: DesignProperties.updateAnimationDuration,
                      child: text != null
                          ? FittedBox(
                              key: ValueKey(text),
                              fit: BoxFit.contain,
                              child: Text(
                                (text),
                                maxLines: 1,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorDark,
                                    fontSize: 100,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          : Container(
                              width: isMobileLayout
                                  ? MediaQuery.of(context).size.width *
                                      0.3 *
                                      0.4
                                  : MediaQuery.of(context).size.width *
                                      0.1 *
                                      0.4,
                              height: isMobileLayout
                                  ? MediaQuery.of(context).size.width *
                                      0.3 *
                                      0.4
                                  : MediaQuery.of(context).size.width *
                                      0.1 *
                                      0.4,
                              key: ValueKey(iconSwitch),
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: iconSwitch ? iconOn : iconOff,
                              ),
                            ))),
            ),
          )),
    );
  }
}

class MaterialBoxLarge extends StatelessWidget {
  final bool isMobileLayout;
  final String text;
  final Widget iconOn;
  final Widget iconOff;
  final bool iconSwitch;
  final String tooltip;

  MaterialBoxLarge(
      {Key key,
      @required this.isMobileLayout,
      this.text,
      this.iconOff,
      this.iconOn,
      this.iconSwitch,
      this.tooltip})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: isMobileLayout
                ? MediaQuery.of(context).size.width * 0.5
                : MediaQuery.of(context).size.width * 0.25,
            height: isMobileLayout
                ? MediaQuery.of(context).size.width * 0.3
                : MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
                border: Theme.of(context).primaryColorDark ==
                        Colors.lightGreen.shade300
                    ? Border.all(width: 0)
                    : null,
                color: Theme.of(context).buttonColor,
                borderRadius: BorderRadius.circular(13)),
            child: Padding(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.width * 0.3 * 0.1),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedSwitcher(
                    child: Container(
                      key: ValueKey(iconSwitch),
                      width: isMobileLayout
                          ? MediaQuery.of(context).size.width * 0.5 * 0.25
                          : MediaQuery.of(context).size.width * 0.5 * 0.1,
                      height: isMobileLayout
                          ? MediaQuery.of(context).size.width * 0.3 * 0.4
                          : MediaQuery.of(context).size.width * 0.1 * 0.4,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: iconSwitch ? iconOn : iconOff,
                        // child: Icon(iconSwitch ? iconOn : iconOff,
                        //     color: Theme.of(context).primaryColorDark),
                      ),
                    ),
                    duration: DesignProperties.updateAnimationDuration,
                  ),
                  AnimatedSwitcher(
                    duration: DesignProperties.updateAnimationDuration,
                    child: Container(
                      key: ValueKey(text),
                      width: isMobileLayout
                          ? MediaQuery.of(context).size.width * 0.5 * 0.3
                          : MediaQuery.of(context).size.width * 0.15 * 0.3,
                      height: isMobileLayout
                          ? MediaQuery.of(context).size.width * 0.3 * 0.4
                          : MediaQuery.of(context).size.width * 0.1 * 0.4,
                      child: FittedBox(
                        alignment: Alignment.center,
                        fit: BoxFit.contain,
                        child: Center(
                          child: Text((text),
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Theme.of(context).primaryColorDark,
                                fontFamily: "Quicksand",
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ),
          )),
    );
  }
}

class GreenhouseValueController extends StatelessWidget {
  final bool isMobileLayout;
  final RangeValues rangeValues;
  final Function onRangeChanged;
  final Function onButtonPressed;
  final Function onSwitchChanged;
  final String title;
  final Widget iconOn;
  final Widget iconOff;
  final bool isAuto;
  final bool manualValue;
  final List rangeLimits;
  GreenhouseValueController(
      {Key key,
      @required this.isMobileLayout,
      @required this.rangeLimits,
      @required this.rangeValues,
      @required this.title,
      @required this.iconOn,
      @required this.iconOff,
      @required this.isAuto,
      @required this.manualValue,
      @required this.onRangeChanged,
      @required this.onSwitchChanged,
      @required this.onButtonPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: isMobileLayout
              ? (MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 0.3 -
                      MediaQuery.of(context).size.width * 0.5) /
                  3
              : (MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 0.3 -
                      MediaQuery.of(context).size.width * 0.5) /
                  10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(13),
        child: Container(
          decoration: BoxDecoration(
              border: Theme.of(context).primaryColorDark ==
                      Colors.lightGreen.shade300
                  ? Border.all(width: 0)
                  : null,
              color: Theme.of(context).buttonColor,
              borderRadius: BorderRadius.circular(13)),
          width: isMobileLayout
              ? MediaQuery.of(context).size.width * 0.75 +
                  (MediaQuery.of(context).size.width / 9)
              : MediaQuery.of(context).size.width * 0.25 +
                  (MediaQuery.of(context).size.width / 9),
          height: MediaQuery.of(context).size.height / 5,
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 5 / 3.5,
                  child: Center(
                      child: AutoSizeText(
                    title,
                    style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontSize: 20,
                        fontFamily: "Quicksand"),
                  ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: isMobileLayout
                          ? MediaQuery.of(context).size.width / 4
                          : MediaQuery.of(context).size.width / 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                        "manual",
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontFamily: "Quicksand"),
                      ),
                          Switch(
                              activeTrackColor: Theme.of(context)
                                  .primaryColorDark
                                  .withOpacity(0.4),
                              inactiveThumbColor: Colors.grey,
                              activeColor: Theme.of(context).primaryColorDark,
                              value: isAuto,
                              onChanged: (bool value) => onSwitchChanged(value)),
                               AutoSizeText(
                        "auto",
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontFamily: "Quicksand"),
                      ),
                        ],
                      )),
                  Container(
                    width: isMobileLayout
                        ? MediaQuery.of(context).size.width / 4
                        : MediaQuery.of(context).size.width / 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            child: FittedBox(child: iconOff)),
                          Switch(
                              activeTrackColor: Theme.of(context)
                                  .primaryColorDark
                                  .withOpacity(0.4),
                              inactiveThumbColor: Colors.grey,
                              activeColor: Theme.of(context).primaryColorDark,
                              value: manualValue,
                              onChanged: isAuto ? null : (bool value) => onButtonPressed(value)),
                               Container(
                                 width: 24,
                                 height: 24,
                                 child: FittedBox(child: iconOn))
                        ],
                      )
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5 / 3,
                width: isMobileLayout
                    ? MediaQuery.of(context).size.width * 0.9
                    : MediaQuery.of(context).size.width * 0.35,
                child: RangeSlider(
                  labels: RangeLabels(rangeValues.start.round().toString(),
                      rangeValues.end.round().toString()),
                  divisions: rangeLimits[2],
                  min: rangeLimits[0],
                  max: rangeLimits[1],
                  values: rangeValues,
                  onChanged: isAuto ? onRangeChanged : null,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RotatingFan extends StatefulWidget {
  const RotatingFan({Key key, @required this.isRotating, @required this.size})
      : super(key: key);
  final isRotating;
  final size;
  @override
  RotatingFanState createState() => RotatingFanState();
}

class RotatingFanState extends State<RotatingFan> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    setState(() {
      _controller = AnimationController(
        duration: const Duration(seconds: 5),
        vsync: this,
      )..repeat();
      _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      );
    });
  }


   @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Animation<double> _animation;
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: DesignProperties.startAnimation,
        child: widget.isRotating
            ? RotationTransition(
                turns: _animation,
                child: FanSvg(
                  size: widget.size,
                  color: Theme.of(context).primaryColorDark,
                ),
              )
            : FanSvg(
                size: widget.size,
                color: Theme.of(context).primaryColorDark,
              ));
  }
}
