import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

//Add this CustomPaint widget to the Widget Tree

class FanSvg extends StatelessWidget {
  FanSvg({Key key, @required this.size, @required this.color})
      : super(key: key);
  final size;
  final color;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size,
          size), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: FanPainter(color: color),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class FanPainter extends CustomPainter {
  FanPainter({@required this.color});
  final color;
  @override
   void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.7648125,size.height*0.4230937);
    path_0.cubicTo(size.width*0.7847969,size.height*0.4275000,size.width*0.8054844,size.height*0.4320625,size.width*0.8286719,size.height*0.4320625);
    path_0.cubicTo(size.width*0.8597344,size.height*0.4320625,size.width*0.8887969,size.height*0.4235625,size.width*0.9175469,size.height*0.4060781);
    path_0.cubicTo(size.width*0.9618594,size.height*0.3791406,size.width*0.9921719,size.height*0.3309375,size.width*0.9986406,size.height*0.2771406);
    path_0.cubicTo(size.width*1.006031,size.height*0.2156875,size.width*0.9830000,size.height*0.1547031,size.width*0.9337813,size.height*0.1055000);
    path_0.cubicTo(size.width*0.8849375,size.height*0.05664063,size.width*0.8197188,size.height*0.02976563,size.width*0.7501563,size.height*0.02976563);
    path_0.cubicTo(size.width*0.6791719,size.height*0.02976563,size.width*0.6122344,size.height*0.05760937,size.width*0.5616562,size.height*0.1081562);
    path_0.cubicTo(size.width*0.4984531,size.height*0.1713594,size.width*0.4573437,size.height*0.2721406,size.width*0.4566250,size.height*0.3645625);
    path_0.cubicTo(size.width*0.4415938,size.height*0.3536094,size.width*0.4282813,size.height*0.3402031,size.width*0.4214375,size.height*0.3207656);
    path_0.cubicTo(size.width*0.4108438,size.height*0.2906875,size.width*0.4165312,size.height*0.2649688,size.width*0.4230937,size.height*0.2351875);
    path_0.cubicTo(size.width*0.4320938,size.height*0.1944063,size.width*0.4432812,size.height*0.1436406,size.width*0.4060781,size.height*0.08243750);
    path_0.cubicTo(size.width*0.3751719,size.height*0.03162500,size.width*0.3172813,size.height*0.00003125000,size.width*0.2550156,size.height*0.00003125000);
    path_0.cubicTo(size.width*0.2012812,size.height*0.00003125000,size.width*0.1481875,size.height*0.02354688,size.width*0.1055000,size.height*0.06621875);
    path_0.cubicTo(size.width*0.003640625,size.height*0.1681094,size.width*0.004859375,size.height*0.3350469,size.width*0.1081875,size.height*0.4383438);
    path_0.cubicTo(size.width*0.1705625,size.height*0.5007344,size.width*0.2730469,size.height*0.5427344,size.width*0.3642969,size.height*0.5437656);
    path_0.cubicTo(size.width*0.3533906,size.height*0.5586563,size.width*0.3400469,size.height*0.5717656,size.width*0.3207656,size.height*0.5785625);
    path_0.cubicTo(size.width*0.2938125,size.height*0.5880781,size.width*0.2655312,size.height*0.5836250,size.width*0.2351875,size.height*0.5769063);
    path_0.cubicTo(size.width*0.2152031,size.height*0.5725000,size.width*0.1945156,size.height*0.5679375,size.width*0.1713125,size.height*0.5679375);
    path_0.cubicTo(size.width*0.1402656,size.height*0.5679375,size.width*0.1112031,size.height*0.5764219,size.width*0.08245313,size.height*0.5939063);
    path_0.cubicTo(size.width*0.03814062,size.height*0.6208594,size.width*0.007828125,size.height*0.6690625,size.width*0.001359375,size.height*0.7228594);
    path_0.cubicTo(size.width*-0.006031250,size.height*0.7843125,size.width*0.01701562,size.height*0.8452969,size.width*0.06620313,size.height*0.8945000);
    path_0.cubicTo(size.width*0.1150625,size.height*0.9433438,size.width*0.1802813,size.height*0.9702344,size.width*0.2498438,size.height*0.9702344);
    path_0.cubicTo(size.width*0.3208281,size.height*0.9702344,size.width*0.3877813,size.height*0.9423906,size.width*0.4383438,size.height*0.8918281);
    path_0.cubicTo(size.width*0.5015469,size.height*0.8286250,size.width*0.5426563,size.height*0.7278594,size.width*0.5433750,size.height*0.6354375);
    path_0.cubicTo(size.width*0.5584062,size.height*0.6463750,size.width*0.5717187,size.height*0.6597969,size.width*0.5785781,size.height*0.6792344);
    path_0.cubicTo(size.width*0.5891563,size.height*0.7093125,size.width*0.5834844,size.height*0.7350313,size.width*0.5769063,size.height*0.7648125);
    path_0.cubicTo(size.width*0.5679062,size.height*0.8055938,size.width*0.5567188,size.height*0.8563594,size.width*0.5939219,size.height*0.9175469);
    path_0.cubicTo(size.width*0.6248281,size.height*0.9683750,size.width*0.6827188,size.height*0.9999688,size.width*0.7450000,size.height*0.9999688);
    path_0.cubicTo(size.width*0.7987188,size.height*0.9999688,size.width*0.8518125,size.height*0.9764531,size.width*0.8945000,size.height*0.9337813);
    path_0.cubicTo(size.width*0.9963437,size.height*0.8319062,size.width*0.9951562,size.height*0.6649844,size.width*0.8918281,size.height*0.5616562);
    path_0.cubicTo(size.width*0.8294531,size.height*0.4992656,size.width*0.7269531,size.height*0.4572656,size.width*0.6357187,size.height*0.4562344);
    path_0.cubicTo(size.width*0.6466094,size.height*0.4413437,size.width*0.6599687,size.height*0.4282344,size.width*0.6792344,size.height*0.4214375);
    path_0.cubicTo(size.width*0.7062344,size.height*0.4119531,size.width*0.7345156,size.height*0.4164375,size.width*0.7648125,size.height*0.4230937);
    path_0.close();
    path_0.moveTo(size.width*0.4573281,size.height*0.5426719);
    path_0.cubicTo(size.width*0.4338125,size.height*0.5191406,size.width*0.4338125,size.height*0.4808594,size.width*0.4573281,size.height*0.4573281);
    path_0.cubicTo(size.width*0.4687188,size.height*0.4459375,size.width*0.4838750,size.height*0.4396562,size.width*0.5000000,size.height*0.4396562);
    path_0.cubicTo(size.width*0.5161250,size.height*0.4396562,size.width*0.5312812,size.height*0.4459375,size.width*0.5426719,size.height*0.4573281);
    path_0.cubicTo(size.width*0.5661875,size.height*0.4808594,size.width*0.5661875,size.height*0.5191406,size.width*0.5426719,size.height*0.5426719);
    path_0.cubicTo(size.width*0.5198750,size.height*0.5654687,size.width*0.4801250,size.height*0.5654687,size.width*0.4573281,size.height*0.5426719);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}

class NoWaterSvg extends StatelessWidget {
  NoWaterSvg({Key key, @required this.size, @required this.color})
      : super(key: key);
  final size;
  final color;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size,
          size), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: NoWaterPainter(color: color),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class NoWaterPainter extends CustomPainter {
  NoWaterPainter({@required this.color});
  final color;
  @override
  void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.9699687,size.height*0.5690938);
    path_0.cubicTo(size.width*0.8492188,size.height*0.6074063,size.width*0.7900000,size.height*0.5888281,size.width*0.7272969,size.height*0.5690938);
    path_0.cubicTo(size.width*0.6657500,size.height*0.5505156,size.width*0.6030625,size.height*0.5307656,size.width*0.4927500,size.height*0.5690938);
    path_0.cubicTo(size.width*0.3720000,size.height*0.6074063,size.width*0.3127813,size.height*0.5888281,size.width*0.2500781,size.height*0.5690938);
    path_0.cubicTo(size.width*0.1885469,size.height*0.5505156,size.width*0.1258438,size.height*0.5307656,size.width*0.01437500,size.height*0.5690938);
    path_0.cubicTo(size.width*0.002765625,size.height*0.5725625,size.width*-0.003046875,size.height*0.5853438,size.width*0.001609375,size.height*0.5957969);
    path_0.cubicTo(size.width*0.005093750,size.height*0.6074063,size.width*0.01785938,size.height*0.6132031,size.width*0.02831250,size.height*0.6085625);
    path_0.cubicTo(size.width*0.1258438,size.height*0.5748906,size.width*0.1780937,size.height*0.5911406,size.width*0.2373125,size.height*0.6097188);
    path_0.cubicTo(size.width*0.2744687,size.height*0.6213438,size.width*0.3139375,size.height*0.6341094,size.width*0.3673594,size.height*0.6341094);
    path_0.cubicTo(size.width*0.4056719,size.height*0.6341094,size.width*0.4509531,size.height*0.6271406,size.width*0.5066875,size.height*0.6097188);
    path_0.cubicTo(size.width*0.6042188,size.height*0.5760469,size.width*0.6564687,size.height*0.5923125,size.width*0.7156875,size.height*0.6108906);
    path_0.cubicTo(size.width*0.7528438,size.height*0.6225000,size.width*0.7923125,size.height*0.6352656,size.width*0.8457344,size.height*0.6352656);
    path_0.cubicTo(size.width*0.8840469,size.height*0.6352656,size.width*0.9293281,size.height*0.6282969,size.width*0.9850625,size.height*0.6108906);
    path_0.cubicTo(size.width*0.9966719,size.height*0.6074063,size.width*1.002484,size.height*0.5957969,size.width*0.9990000,size.height*0.5841875);
    path_0.cubicTo(size.width*0.9931875,size.height*0.5714063,size.width*0.9815781,size.height*0.5656094,size.width*0.9699687,size.height*0.5690938);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
    path_1.moveTo(size.width*0.9699687,size.height*0.7026094);
    path_1.cubicTo(size.width*0.8492188,size.height*0.7409375,size.width*0.7900000,size.height*0.7223594,size.width*0.7272969,size.height*0.7026094);
    path_1.cubicTo(size.width*0.6657500,size.height*0.6840312,size.width*0.6030625,size.height*0.6642969,size.width*0.4927500,size.height*0.7026094);
    path_1.cubicTo(size.width*0.3720000,size.height*0.7409375,size.width*0.3127813,size.height*0.7223594,size.width*0.2500781,size.height*0.7026094);
    path_1.cubicTo(size.width*0.1885469,size.height*0.6840312,size.width*0.1258438,size.height*0.6642969,size.width*0.01437500,size.height*0.7026094);
    path_1.cubicTo(size.width*0.002765625,size.height*0.7060937,size.width*-0.003046875,size.height*0.7188750,size.width*0.001609375,size.height*0.7293125);
    path_1.cubicTo(size.width*0.005093750,size.height*0.7409375,size.width*0.01785938,size.height*0.7467344,size.width*0.02831250,size.height*0.7420937);
    path_1.cubicTo(size.width*0.1258438,size.height*0.7084219,size.width*0.1780937,size.height*0.7246719,size.width*0.2373125,size.height*0.7432500);
    path_1.cubicTo(size.width*0.2744687,size.height*0.7548594,size.width*0.3139375,size.height*0.7676406,size.width*0.3673594,size.height*0.7676406);
    path_1.cubicTo(size.width*0.4056719,size.height*0.7676406,size.width*0.4509531,size.height*0.7606719,size.width*0.5066875,size.height*0.7432500);
    path_1.cubicTo(size.width*0.6042188,size.height*0.7095781,size.width*0.6564687,size.height*0.7258281,size.width*0.7156875,size.height*0.7444063);
    path_1.cubicTo(size.width*0.7528438,size.height*0.7560313,size.width*0.7923125,size.height*0.7687969,size.width*0.8457344,size.height*0.7687969);
    path_1.cubicTo(size.width*0.8840469,size.height*0.7687969,size.width*0.9293281,size.height*0.7618281,size.width*0.9850625,size.height*0.7444063);
    path_1.cubicTo(size.width*0.9966719,size.height*0.7409375,size.width*1.002484,size.height*0.7293125,size.width*0.9990000,size.height*0.7177031);
    path_1.cubicTo(size.width*0.9931875,size.height*0.7049375,size.width*0.9815781,size.height*0.6991250,size.width*0.9699687,size.height*0.7026094);
    path_1.close();

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_1,paint_1_fill);

Path path_2 = Path();
    path_2.moveTo(size.width*0.9699687,size.height*0.8361406);
    path_2.cubicTo(size.width*0.8492188,size.height*0.8744531,size.width*0.7900000,size.height*0.8558750,size.width*0.7272969,size.height*0.8361406);
    path_2.cubicTo(size.width*0.6657500,size.height*0.8175625,size.width*0.6030625,size.height*0.7978281,size.width*0.4927500,size.height*0.8361406);
    path_2.cubicTo(size.width*0.3720000,size.height*0.8744531,size.width*0.3127813,size.height*0.8558750,size.width*0.2500781,size.height*0.8361406);
    path_2.cubicTo(size.width*0.1885469,size.height*0.8175625,size.width*0.1258438,size.height*0.7978281,size.width*0.01437500,size.height*0.8361406);
    path_2.cubicTo(size.width*0.002765625,size.height*0.8396250,size.width*-0.003046875,size.height*0.8523906,size.width*0.001609375,size.height*0.8628438);
    path_2.cubicTo(size.width*0.005093750,size.height*0.8744531,size.width*0.01785938,size.height*0.8802656,size.width*0.02831250,size.height*0.8756250);
    path_2.cubicTo(size.width*0.1258438,size.height*0.8419531,size.width*0.1780937,size.height*0.8582031,size.width*0.2373125,size.height*0.8767812);
    path_2.cubicTo(size.width*0.2744687,size.height*0.8883906,size.width*0.3139375,size.height*0.9011562,size.width*0.3673594,size.height*0.9011562);
    path_2.cubicTo(size.width*0.4056719,size.height*0.9011562,size.width*0.4509531,size.height*0.8942031,size.width*0.5066875,size.height*0.8767812);
    path_2.cubicTo(size.width*0.6042188,size.height*0.8431094,size.width*0.6564687,size.height*0.8593594,size.width*0.7156875,size.height*0.8779375);
    path_2.cubicTo(size.width*0.7528438,size.height*0.8895469,size.width*0.7923125,size.height*0.9023281,size.width*0.8457344,size.height*0.9023281);
    path_2.cubicTo(size.width*0.8840469,size.height*0.9023281,size.width*0.9293281,size.height*0.8953594,size.width*0.9850625,size.height*0.8779375);
    path_2.cubicTo(size.width*0.9966719,size.height*0.8744531,size.width*1.002484,size.height*0.8628438,size.width*0.9990000,size.height*0.8512344);
    path_2.cubicTo(size.width*0.9931875,size.height*0.8384687,size.width*0.9815781,size.height*0.8326562,size.width*0.9699687,size.height*0.8361406);
    path_2.close();

Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
paint_2_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_2,paint_2_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}

class WaterSvg extends StatelessWidget {
  WaterSvg({Key key, @required this.size, @required this.color})
      : super(key: key);
  final size;
  final color;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size,
          size), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: WaterPainter(color: color),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class WaterPainter extends CustomPainter {
  WaterPainter({@required this.color});
  final color;
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1467411, size.height * 0.1081254);
    path_0.cubicTo(
        size.width * 0.1432577,
        size.height * 0.1023199,
        size.width * 0.1362911,
        size.height * 0.09767546,
        size.width * 0.1281633,
        size.height * 0.09767546);
    path_0.cubicTo(
        size.width * 0.1200355,
        size.height * 0.09767546,
        size.width * 0.1130689,
        size.height * 0.1023199,
        size.width * 0.1095855,
        size.height * 0.1081254);
    path_0.cubicTo(
        size.width * 0.09449111,
        size.height * 0.1359921,
        size.width * 0.01785787,
        size.height * 0.2764864,
        size.width * 0.01785787,
        size.height * 0.3287363);
    path_0.cubicTo(
        size.width * 0.01785787,
        size.height * 0.3891140,
        size.width * 0.06778559,
        size.height * 0.4390417,
        size.width * 0.1281633,
        size.height * 0.4390417);
    path_0.cubicTo(
        size.width * 0.1885410,
        size.height * 0.4390417,
        size.width * 0.2384687,
        size.height * 0.3891140,
        size.width * 0.2384687,
        size.height * 0.3287363);
    path_0.cubicTo(
        size.width * 0.2384687,
        size.height * 0.2764864,
        size.width * 0.1618355,
        size.height * 0.1359921,
        size.width * 0.1467411,
        size.height * 0.1081254);
    path_0.close();
    path_0.moveTo(size.width * 0.1281633, size.height * 0.3960807);
    path_0.cubicTo(
        size.width * 0.09100779,
        size.height * 0.3960807,
        size.width * 0.06081893,
        size.height * 0.3658918,
        size.width * 0.06081893,
        size.height * 0.3287363);
    path_0.cubicTo(
        size.width * 0.06081893,
        size.height * 0.3020308,
        size.width * 0.09681333,
        size.height * 0.2242364,
        size.width * 0.1281633,
        size.height * 0.1638587);
    path_0.cubicTo(
        size.width * 0.1595133,
        size.height * 0.2242364,
        size.width * 0.1955077,
        size.height * 0.3031919,
        size.width * 0.1955077,
        size.height * 0.3287363);
    path_0.cubicTo(
        size.width * 0.1955077,
        size.height * 0.3658918,
        size.width * 0.1653188,
        size.height * 0.3960807,
        size.width * 0.1281633,
        size.height * 0.3960807);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5229406, size.height * 0.1092866);
    path_1.cubicTo(
        size.width * 0.5159740,
        size.height * 0.09535324,
        size.width * 0.4927518,
        size.height * 0.09535324,
        size.width * 0.4857851,
        size.height * 0.1092866);
    path_1.cubicTo(
        size.width * 0.4706907,
        size.height * 0.1371532,
        size.width * 0.3940574,
        size.height * 0.2776475,
        size.width * 0.3940574,
        size.height * 0.3298974);
    path_1.cubicTo(
        size.width * 0.3940574,
        size.height * 0.3902751,
        size.width * 0.4439852,
        size.height * 0.4402028,
        size.width * 0.5043629,
        size.height * 0.4402028);
    path_1.cubicTo(
        size.width * 0.5647406,
        size.height * 0.4402028,
        size.width * 0.6146683,
        size.height * 0.3902751,
        size.width * 0.6146683,
        size.height * 0.3298974);
    path_1.cubicTo(
        size.width * 0.6146683,
        size.height * 0.2776475,
        size.width * 0.5380351,
        size.height * 0.1371532,
        size.width * 0.5229406,
        size.height * 0.1092866);
    path_1.close();
    path_1.moveTo(size.width * 0.5043629, size.height * 0.3960807);
    path_1.cubicTo(
        size.width * 0.4672074,
        size.height * 0.3960807,
        size.width * 0.4370185,
        size.height * 0.3658918,
        size.width * 0.4370185,
        size.height * 0.3287363);
    path_1.cubicTo(
        size.width * 0.4370185,
        size.height * 0.3020308,
        size.width * 0.4730129,
        size.height * 0.2242364,
        size.width * 0.5043629,
        size.height * 0.1638587);
    path_1.cubicTo(
        size.width * 0.5357128,
        size.height * 0.2242364,
        size.width * 0.5717072,
        size.height * 0.3031919,
        size.width * 0.5717072,
        size.height * 0.3287363);
    path_1.cubicTo(
        size.width * 0.5717072,
        size.height * 0.3658918,
        size.width * 0.5415184,
        size.height * 0.3960807,
        size.width * 0.5043629,
        size.height * 0.3960807);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8991402, size.height * 0.1081254);
    path_2.cubicTo(
        size.width * 0.8921735,
        size.height * 0.09419213,
        size.width * 0.8689513,
        size.height * 0.09419213,
        size.width * 0.8619847,
        size.height * 0.1081254);
    path_2.cubicTo(
        size.width * 0.8468903,
        size.height * 0.1359921,
        size.width * 0.7702570,
        size.height * 0.2764864,
        size.width * 0.7702570,
        size.height * 0.3287363);
    path_2.cubicTo(
        size.width * 0.7702570,
        size.height * 0.3902751,
        size.width * 0.8201847,
        size.height * 0.4390417,
        size.width * 0.8805624,
        size.height * 0.4390417);
    path_2.cubicTo(
        size.width * 0.9409402,
        size.height * 0.4390417,
        size.width * 0.9908679,
        size.height * 0.3891140,
        size.width * 0.9908679,
        size.height * 0.3287363);
    path_2.cubicTo(
        size.width * 0.9908679,
        size.height * 0.2764864,
        size.width * 0.9142346,
        size.height * 0.1359921,
        size.width * 0.8991402,
        size.height * 0.1081254);
    path_2.close();
    path_2.moveTo(size.width * 0.8805624, size.height * 0.3960807);
    path_2.cubicTo(
        size.width * 0.8434069,
        size.height * 0.3960807,
        size.width * 0.8132181,
        size.height * 0.3658918,
        size.width * 0.8132181,
        size.height * 0.3287363);
    path_2.cubicTo(
        size.width * 0.8132181,
        size.height * 0.3031919,
        size.width * 0.8492125,
        size.height * 0.2242364,
        size.width * 0.8805624,
        size.height * 0.1638587);
    path_2.cubicTo(
        size.width * 0.9119124,
        size.height * 0.2242364,
        size.width * 0.9479068,
        size.height * 0.3020308,
        size.width * 0.9479068,
        size.height * 0.3287363);
    path_2.cubicTo(
        size.width * 0.9479068,
        size.height * 0.3658918,
        size.width * 0.9177180,
        size.height * 0.3960807,
        size.width * 0.8805624,
        size.height * 0.3960807);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.9989956, size.height * 0.5841805);
    path_3.cubicTo(
        size.width * 0.9931901,
        size.height * 0.5714083,
        size.width * 0.9815790,
        size.height * 0.5656027,
        size.width * 0.9699679,
        size.height * 0.5690860);
    path_3.cubicTo(
        size.width * 0.8492125,
        size.height * 0.6074027,
        size.width * 0.7899959,
        size.height * 0.5888249,
        size.width * 0.7272959,
        size.height * 0.5690860);
    path_3.cubicTo(
        size.width * 0.6657571,
        size.height * 0.5505083,
        size.width * 0.6030572,
        size.height * 0.5307694,
        size.width * 0.4927518,
        size.height * 0.5690860);
    path_3.cubicTo(
        size.width * 0.3719964,
        size.height * 0.6074027,
        size.width * 0.3127798,
        size.height * 0.5888249,
        size.width * 0.2500798,
        size.height * 0.5690860);
    path_3.cubicTo(
        size.width * 0.1885410,
        size.height * 0.5505083,
        size.width * 0.1258411,
        size.height * 0.5307694,
        size.width * 0.01437454,
        size.height * 0.5690860);
    path_3.cubicTo(
        size.width * 0.002763441,
        size.height * 0.5725694,
        size.width * -0.003042108,
        size.height * 0.5853416,
        size.width * 0.001602332,
        size.height * 0.5957916);
    path_3.cubicTo(
        size.width * 0.005085661,
        size.height * 0.6074027,
        size.width * 0.01785787,
        size.height * 0.6132082,
        size.width * 0.02830786,
        size.height * 0.6085638);
    path_3.cubicTo(
        size.width * 0.1258411,
        size.height * 0.5748916,
        size.width * 0.1780910,
        size.height * 0.5911471,
        size.width * 0.2373076,
        size.height * 0.6097249);
    path_3.cubicTo(
        size.width * 0.2744631,
        size.height * 0.6213360,
        size.width * 0.3139409,
        size.height * 0.6341082,
        size.width * 0.3673519,
        size.height * 0.6341082);
    path_3.cubicTo(
        size.width * 0.4056685,
        size.height * 0.6341082,
        size.width * 0.4509518,
        size.height * 0.6271415,
        size.width * 0.5066851,
        size.height * 0.6097249);
    path_3.cubicTo(
        size.width * 0.6042183,
        size.height * 0.5760527,
        size.width * 0.6564683,
        size.height * 0.5923082,
        size.width * 0.7156849,
        size.height * 0.6108860);
    path_3.cubicTo(
        size.width * 0.7528404,
        size.height * 0.6224971,
        size.width * 0.7923181,
        size.height * 0.6352693,
        size.width * 0.8457291,
        size.height * 0.6352693);
    path_3.cubicTo(
        size.width * 0.8840458,
        size.height * 0.6352693,
        size.width * 0.9293291,
        size.height * 0.6283026,
        size.width * 0.9850623,
        size.height * 0.6108860);
    path_3.cubicTo(
        size.width * 0.9966734,
        size.height * 0.6074027,
        size.width * 1.002479,
        size.height * 0.5957916,
        size.width * 0.9989956,
        size.height * 0.5841805);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.9989956, size.height * 0.7177081);
    path_4.cubicTo(
        size.width * 0.9931901,
        size.height * 0.7049359,
        size.width * 0.9815790,
        size.height * 0.6991303,
        size.width * 0.9699679,
        size.height * 0.7026137);
    path_4.cubicTo(
        size.width * 0.8492125,
        size.height * 0.7409303,
        size.width * 0.7899959,
        size.height * 0.7223525,
        size.width * 0.7272959,
        size.height * 0.7026137);
    path_4.cubicTo(
        size.width * 0.6657571,
        size.height * 0.6840359,
        size.width * 0.6030572,
        size.height * 0.6642970,
        size.width * 0.4927518,
        size.height * 0.7026137);
    path_4.cubicTo(
        size.width * 0.3719964,
        size.height * 0.7409303,
        size.width * 0.3127798,
        size.height * 0.7223525,
        size.width * 0.2500798,
        size.height * 0.7026137);
    path_4.cubicTo(
        size.width * 0.1885410,
        size.height * 0.6840359,
        size.width * 0.1258411,
        size.height * 0.6642970,
        size.width * 0.01437454,
        size.height * 0.7026137);
    path_4.cubicTo(
        size.width * 0.002763441,
        size.height * 0.7060970,
        size.width * -0.003042108,
        size.height * 0.7188692,
        size.width * 0.001602332,
        size.height * 0.7293192);
    path_4.cubicTo(
        size.width * 0.005085661,
        size.height * 0.7409303,
        size.width * 0.01785787,
        size.height * 0.7467358,
        size.width * 0.02830786,
        size.height * 0.7420914);
    path_4.cubicTo(
        size.width * 0.1258411,
        size.height * 0.7084192,
        size.width * 0.1780910,
        size.height * 0.7246747,
        size.width * 0.2373076,
        size.height * 0.7432525);
    path_4.cubicTo(
        size.width * 0.2744631,
        size.height * 0.7548636,
        size.width * 0.3139409,
        size.height * 0.7676358,
        size.width * 0.3673519,
        size.height * 0.7676358);
    path_4.cubicTo(
        size.width * 0.4056685,
        size.height * 0.7676358,
        size.width * 0.4509518,
        size.height * 0.7606691,
        size.width * 0.5066851,
        size.height * 0.7432525);
    path_4.cubicTo(
        size.width * 0.6042183,
        size.height * 0.7095803,
        size.width * 0.6564683,
        size.height * 0.7258359,
        size.width * 0.7156849,
        size.height * 0.7444136);
    path_4.cubicTo(
        size.width * 0.7528404,
        size.height * 0.7560247,
        size.width * 0.7923181,
        size.height * 0.7687969,
        size.width * 0.8457291,
        size.height * 0.7687969);
    path_4.cubicTo(
        size.width * 0.8840458,
        size.height * 0.7687969,
        size.width * 0.9293291,
        size.height * 0.7618303,
        size.width * 0.9850623,
        size.height * 0.7444136);
    path_4.cubicTo(
        size.width * 0.9966734,
        size.height * 0.7409303,
        size.width * 1.002479,
        size.height * 0.7293192,
        size.width * 0.9989956,
        size.height * 0.7177081);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.9989956, size.height * 0.8512357);
    path_5.cubicTo(
        size.width * 0.9931901,
        size.height * 0.8384635,
        size.width * 0.9815790,
        size.height * 0.8326580,
        size.width * 0.9699679,
        size.height * 0.8361413);
    path_5.cubicTo(
        size.width * 0.8492125,
        size.height * 0.8744579,
        size.width * 0.7899959,
        size.height * 0.8558802,
        size.width * 0.7272959,
        size.height * 0.8361413);
    path_5.cubicTo(
        size.width * 0.6657571,
        size.height * 0.8175635,
        size.width * 0.6030572,
        size.height * 0.7978247,
        size.width * 0.4927518,
        size.height * 0.8361413);
    path_5.cubicTo(
        size.width * 0.3719964,
        size.height * 0.8744579,
        size.width * 0.3127798,
        size.height * 0.8558802,
        size.width * 0.2500798,
        size.height * 0.8361413);
    path_5.cubicTo(
        size.width * 0.1885410,
        size.height * 0.8175635,
        size.width * 0.1258411,
        size.height * 0.7978247,
        size.width * 0.01437454,
        size.height * 0.8361413);
    path_5.cubicTo(
        size.width * 0.002763441,
        size.height * 0.8396246,
        size.width * -0.003042108,
        size.height * 0.8523968,
        size.width * 0.001602332,
        size.height * 0.8628468);
    path_5.cubicTo(
        size.width * 0.005085661,
        size.height * 0.8744579,
        size.width * 0.01785787,
        size.height * 0.8802635,
        size.width * 0.02830786,
        size.height * 0.8756190);
    path_5.cubicTo(
        size.width * 0.1258411,
        size.height * 0.8419468,
        size.width * 0.1780910,
        size.height * 0.8582024,
        size.width * 0.2373076,
        size.height * 0.8767801);
    path_5.cubicTo(
        size.width * 0.2744631,
        size.height * 0.8883912,
        size.width * 0.3139409,
        size.height * 0.9011634,
        size.width * 0.3673519,
        size.height * 0.9011634);
    path_5.cubicTo(
        size.width * 0.4056685,
        size.height * 0.9011634,
        size.width * 0.4509518,
        size.height * 0.8941968,
        size.width * 0.5066851,
        size.height * 0.8767801);
    path_5.cubicTo(
        size.width * 0.6042183,
        size.height * 0.8431079,
        size.width * 0.6564683,
        size.height * 0.8593635,
        size.width * 0.7156849,
        size.height * 0.8779412);
    path_5.cubicTo(
        size.width * 0.7528404,
        size.height * 0.8895523,
        size.width * 0.7923181,
        size.height * 0.9023245,
        size.width * 0.8457291,
        size.height * 0.9023245);
    path_5.cubicTo(
        size.width * 0.8840458,
        size.height * 0.9023245,
        size.width * 0.9293291,
        size.height * 0.8953579,
        size.width * 0.9850623,
        size.height * 0.8779412);
    path_5.cubicTo(
        size.width * 0.9966734,
        size.height * 0.8744579,
        size.width * 1.002479,
        size.height * 0.8628468,
        size.width * 0.9989956,
        size.height * 0.8512357);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


class BulbOffSvg extends StatelessWidget {
  BulbOffSvg({Key key, @required this.size, @required this.color})
      : super(key: key);
  final size;
  final color;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size,
          size), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: BulbOffPainter(color: color),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class BulbOffPainter extends CustomPainter {
  BulbOffPainter({@required this.color});
  final color;
  @override
  void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.4922031,size.height*0.1591719);
    path_0.cubicTo(size.width*0.3907031,size.height*0.1591719,size.width*0.3081250,size.height*0.2417500,size.width*0.3081250,size.height*0.3432500);
    path_0.cubicTo(size.width*0.3081250,size.height*0.3529531,size.width*0.3159844,size.height*0.3608281,size.width*0.3257031,size.height*0.3608281);
    path_0.cubicTo(size.width*0.3354375,size.height*0.3608281,size.width*0.3432969,size.height*0.3529531,size.width*0.3432969,size.height*0.3432500);
    path_0.cubicTo(size.width*0.3432969,size.height*0.2611406,size.width*0.4100937,size.height*0.1943281,size.width*0.4922031,size.height*0.1943281);
    path_0.cubicTo(size.width*0.5019219,size.height*0.1943281,size.width*0.5097812,size.height*0.1864688,size.width*0.5097812,size.height*0.1767500);
    path_0.cubicTo(size.width*0.5097812,size.height*0.1670469,size.width*0.5019219,size.height*0.1591719,size.width*0.4922031,size.height*0.1591719);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
    path_1.moveTo(size.width*0.2906563,size.height*0.5082187);
    path_1.cubicTo(size.width*0.2908281,size.height*0.5084531,size.width*0.2910156,size.height*0.5086875,size.width*0.2912187,size.height*0.5089063);
    path_1.cubicTo(size.width*0.3681719,size.height*0.6157344,size.width*0.3490313,size.height*0.6665469,size.width*0.3490313,size.height*0.6666250);
    path_1.cubicTo(size.width*0.3449219,size.height*0.6754219,size.width*0.3487188,size.height*0.6858906,size.width*0.3575156,size.height*0.6900156);
    path_1.cubicTo(size.width*0.3599219,size.height*0.6911406,size.width*0.3624531,size.height*0.6916875,size.width*0.3649531,size.height*0.6916719);
    path_1.cubicTo(size.width*0.3715625,size.height*0.6916719,size.width*0.3778906,size.height*0.6879219,size.width*0.3808750,size.height*0.6815469);
    path_1.cubicTo(size.width*0.3840625,size.height*0.6747969,size.width*0.4092031,size.height*0.6118594,size.width*0.3188125,size.height*0.4870781);
    path_1.cubicTo(size.width*0.3184063,size.height*0.4865312,size.width*0.3180000,size.height*0.4860000,size.width*0.3175469,size.height*0.4855156);
    path_1.cubicTo(size.width*0.2860625,size.height*0.4443750,size.width*0.2694219,size.height*0.3952188,size.width*0.2694219,size.height*0.3432188);
    path_1.cubicTo(size.width*0.2694219,size.height*0.2140469,size.width*0.3745469,size.height*0.1089375,size.width*0.5037187,size.height*0.1089375);
    path_1.cubicTo(size.width*0.6328750,size.height*0.1089375,size.width*0.7380000,size.height*0.2140469,size.width*0.7380000,size.height*0.3432188);
    path_1.cubicTo(size.width*0.7380000,size.height*0.3953594,size.width*0.7212656,size.height*0.4447031,size.width*0.6892812,size.height*0.4862969);
    path_1.cubicTo(size.width*0.5988438,size.height*0.6111875,size.width*0.6250156,size.height*0.6748281,size.width*0.6282813,size.height*0.6816875);
    path_1.cubicTo(size.width*0.6324063,size.height*0.6902812,size.width*0.6425625,size.height*0.6937969,size.width*0.6512500,size.height*0.6899063);
    path_1.cubicTo(size.width*0.6599219,size.height*0.6860156,size.width*0.6638594,size.height*0.6756875,size.width*0.6601875,size.height*0.6668906);
    path_1.cubicTo(size.width*0.6599844,size.height*0.6663906,size.width*0.6398281,size.height*0.6145625,size.width*0.7174687,size.height*0.5073281);
    path_1.cubicTo(size.width*0.7538906,size.height*0.4599219,size.width*0.7731719,size.height*0.4031875,size.width*0.7731719,size.height*0.3432500);
    path_1.cubicTo(size.width*0.7731719,size.height*0.1946719,size.width*0.6522969,size.height*0.07379687,size.width*0.5037187,size.height*0.07379687);
    path_1.cubicTo(size.width*0.3551406,size.height*0.07379687,size.width*0.2342500,size.height*0.1946875,size.width*0.2342500,size.height*0.3432500);
    path_1.cubicTo(size.width*0.2342500,size.height*0.4035781,size.width*0.2537500,size.height*0.4606250,size.width*0.2906563,size.height*0.5082187);
    path_1.close();

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_1,paint_1_fill);

Path path_2 = Path();
    path_2.moveTo(size.width*0.6606250,size.height*0.7444063);
    path_2.cubicTo(size.width*0.6606250,size.height*0.7205938,size.width*0.6412344,size.height*0.7012188,size.width*0.6174375,size.height*0.7012188);
    path_2.cubicTo(size.width*0.5937344,size.height*0.7012188,size.width*0.4042031,size.height*0.7012188,size.width*0.3805156,size.height*0.7012188);
    path_2.cubicTo(size.width*0.3566875,size.height*0.7012188,size.width*0.3373125,size.height*0.7205938,size.width*0.3373125,size.height*0.7444063);
    path_2.cubicTo(size.width*0.3373125,size.height*0.7459062,size.width*0.3373125,size.height*0.7578594,size.width*0.3373125,size.height*0.7593594);
    path_2.cubicTo(size.width*0.3373125,size.height*0.7831562,size.width*0.3566875,size.height*0.8025469,size.width*0.3805156,size.height*0.8025469);
    path_2.cubicTo(size.width*0.4042031,size.height*0.8025469,size.width*0.5937656,size.height*0.8025469,size.width*0.6174531,size.height*0.8025469);
    path_2.cubicTo(size.width*0.6412500,size.height*0.8025469,size.width*0.6606250,size.height*0.7831719,size.width*0.6606250,size.height*0.7593594);
    path_2.cubicTo(size.width*0.6606250,size.height*0.7563594,size.width*0.6606250,size.height*0.7459062,size.width*0.6606250,size.height*0.7444063);
    path_2.close();
    path_2.moveTo(size.width*0.3724688,size.height*0.7444063);
    path_2.cubicTo(size.width*0.3724688,size.height*0.7399844,size.width*0.3760781,size.height*0.7363750,size.width*0.3805156,size.height*0.7363750);
    path_2.cubicTo(size.width*0.4042031,size.height*0.7363750,size.width*0.5937656,size.height*0.7363750,size.width*0.6174531,size.height*0.7363750);
    path_2.cubicTo(size.width*0.6218750,size.height*0.7363750,size.width*0.6254844,size.height*0.7399844,size.width*0.6254844,size.height*0.7444063);
    path_2.cubicTo(size.width*0.6254844,size.height*0.7459062,size.width*0.6254844,size.height*0.7578594,size.width*0.6254844,size.height*0.7593594);
    path_2.cubicTo(size.width*0.6254844,size.height*0.7637812,size.width*0.6218906,size.height*0.7673906,size.width*0.6174531,size.height*0.7673906);
    path_2.cubicTo(size.width*0.5937656,size.height*0.7673906,size.width*0.4042031,size.height*0.7673906,size.width*0.3805156,size.height*0.7673906);
    path_2.cubicTo(size.width*0.3760781,size.height*0.7673906,size.width*0.3724688,size.height*0.7637812,size.width*0.3724688,size.height*0.7593594);
    path_2.cubicTo(size.width*0.3724688,size.height*0.7563594,size.width*0.3724688,size.height*0.7459062,size.width*0.3724688,size.height*0.7444063);
    path_2.close();

Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
paint_2_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_2,paint_2_fill);

Path path_3 = Path();
    path_3.moveTo(size.width*0.3913906,size.height*0.8468594);
    path_3.cubicTo(size.width*0.3913906,size.height*0.8515000,size.width*0.3913906,size.height*0.8886563,size.width*0.3913906,size.height*0.8932969);
    path_3.cubicTo(size.width*0.3913906,size.height*0.9001875,size.width*0.3954219,size.height*0.9064219,size.width*0.4016719,size.height*0.9092969);
    path_3.cubicTo(size.width*0.4111563,size.height*0.9136094,size.width*0.4869531,size.height*0.9482031,size.width*0.4964219,size.height*0.9525156);
    path_3.cubicTo(size.width*0.4987500,size.height*0.9535781,size.width*0.5012187,size.height*0.9541094,size.width*0.5037187,size.height*0.9541094);
    path_3.cubicTo(size.width*0.5062813,size.height*0.9541094,size.width*0.5088594,size.height*0.9535469,size.width*0.5112188,size.height*0.9524219);
    path_3.cubicTo(size.width*0.5207188,size.height*0.9479375,size.width*0.5967344,size.height*0.9120625,size.width*0.6062344,size.height*0.9075937);
    path_3.cubicTo(size.width*0.6123906,size.height*0.9046875,size.width*0.6163125,size.height*0.8985000,size.width*0.6163125,size.height*0.8916875);
    path_3.cubicTo(size.width*0.6163125,size.height*0.8872188,size.width*0.6163125,size.height*0.8513594,size.width*0.6163125,size.height*0.8468750);
    path_3.cubicTo(size.width*0.6163125,size.height*0.8371719,size.width*0.6084531,size.height*0.8292969,size.width*0.5987187,size.height*0.8292969);
    path_3.cubicTo(size.width*0.5890000,size.height*0.8292969,size.width*0.5811406,size.height*0.8371719,size.width*0.5811406,size.height*0.8468750);
    path_3.cubicTo(size.width*0.5811406,size.height*0.8491250,size.width*0.5811406,size.height*0.8603594,size.width*0.5811406,size.height*0.8805625);
    path_3.lineTo(size.width*0.5035938,size.height*0.9171719);
    path_3.lineTo(size.width*0.4265469,size.height*0.8820000);
    path_3.cubicTo(size.width*0.4265469,size.height*0.8609219,size.width*0.4265469,size.height*0.8492188,size.width*0.4265469,size.height*0.8468750);
    path_3.cubicTo(size.width*0.4265469,size.height*0.8371406,size.width*0.4187031,size.height*0.8292812,size.width*0.4089687,size.height*0.8292812);
    path_3.cubicTo(size.width*0.3992500,size.height*0.8292812,size.width*0.3913906,size.height*0.8371562,size.width*0.3913906,size.height*0.8468594);
    path_3.close();

Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
paint_3_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_3,paint_3_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}

class BulbOnSvg extends StatelessWidget {
  BulbOnSvg({Key key, @required this.size, @required this.color})
      : super(key: key);
  final size;
  final color;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size,
          size), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: BulbOnPainter(color: color),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class BulbOnPainter extends CustomPainter {
  BulbOnPainter({@required this.color});
  final color;
  @override
  void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.5097838,size.height*0.1767511);
    path_0.cubicTo(size.width*0.5097838,size.height*0.1670463,size.width*0.5019261,size.height*0.1591690,size.width*0.4922017,size.height*0.1591690);
    path_0.cubicTo(size.width*0.3907061,size.height*0.1591690,size.width*0.3081270,size.height*0.2417480,size.width*0.3081270,size.height*0.3432437);
    path_0.cubicTo(size.width*0.3081270,size.height*0.3529486,size.width*0.3159848,size.height*0.3608258,size.width*0.3257092,size.height*0.3608258);
    path_0.cubicTo(size.width*0.3354313,size.height*0.3608258,size.width*0.3432913,size.height*0.3529486,size.width*0.3432913,size.height*0.3432437);
    path_0.cubicTo(size.width*0.3432913,size.height*0.2611405,size.width*0.4101007,size.height*0.1943311,size.width*0.4922039,size.height*0.1943311);
    path_0.cubicTo(size.width*0.5019261,size.height*0.1943311,size.width*0.5097838,size.height*0.1864733,size.width*0.5097838,size.height*0.1767511);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
    path_1.moveTo(size.width*0.2342515,size.height*0.3432437);
    path_1.cubicTo(size.width*0.2342515,size.height*0.4035817,size.width*0.2537499,size.height*0.4606322,size.width*0.2906509,size.height*0.5082265);
    path_1.cubicTo(size.width*0.2908261,size.height*0.5084558,size.width*0.2910208,size.height*0.5086829,size.width*0.2912133,size.height*0.5089122);
    path_1.cubicTo(size.width*0.3681666,size.height*0.6157350,size.width*0.3490381,size.height*0.6665455,size.width*0.3490381,size.height*0.6666321);
    path_1.cubicTo(size.width*0.3449242,size.height*0.6754220,size.width*0.3487223,size.height*0.6858839,size.width*0.3575122,size.height*0.6900150);
    path_1.cubicTo(size.width*0.3599217,size.height*0.6911397,size.width*0.3624523,size.height*0.6916848,size.width*0.3649483,size.height*0.6916675);
    path_1.cubicTo(size.width*0.3715580,size.height*0.6916675,size.width*0.3778888,size.height*0.6879235,size.width*0.3808758,size.height*0.6815408);
    path_1.cubicTo(size.width*0.3840574,size.height*0.6747905,size.width*0.4091988,size.height*0.6118656,size.width*0.3188139,size.height*0.4870757);
    path_1.cubicTo(size.width*0.3184094,size.height*0.4865306,size.width*0.3180050,size.height*0.4860029,size.width*0.3175486,size.height*0.4855119);
    path_1.cubicTo(size.width*0.2860613,size.height*0.4443716,size.width*0.2694287,size.height*0.3952157,size.width*0.2694287,size.height*0.3432264);
    path_1.cubicTo(size.width*0.2694287,size.height*0.2140393,size.width*0.3745471,size.height*0.1089403,size.width*0.5037148,size.height*0.1089403);
    path_1.cubicTo(size.width*0.6328824,size.height*0.1089403,size.width*0.7380052,size.height*0.2140393,size.width*0.7380052,size.height*0.3432264);
    path_1.cubicTo(size.width*0.7380052,size.height*0.3953541,size.width*0.7212687,size.height*0.4447047,size.width*0.6892883,size.height*0.4863014);
    path_1.cubicTo(size.width*0.5988515,size.height*0.6111800,size.width*0.6250116,size.height*0.6748251,size.width*0.6282819,size.height*0.6816814);
    path_1.cubicTo(size.width*0.6324130,size.height*0.6902789,size.width*0.6425570,size.height*0.6937958,size.width*0.6512431,size.height*0.6899091);
    path_1.cubicTo(size.width*0.6599293,size.height*0.6860223,size.width*0.6638657,size.height*0.6756859,size.width*0.6601910,size.height*0.6668959);
    path_1.cubicTo(size.width*0.6599790,size.height*0.6663855,size.width*0.6398317,size.height*0.6145562,size.width*0.7174707,size.height*0.5073289);
    path_1.cubicTo(size.width*0.7538981,size.height*0.4599293,size.width*0.7731672,size.height*0.4031946,size.width*0.7731672,size.height*0.3432437);
    path_1.cubicTo(size.width*0.7731672,size.height*0.1946642,size.width*0.6522964,size.height*0.07379338,size.width*0.5037169,size.height*0.07379338);
    path_1.cubicTo(size.width*0.3551374,size.height*0.07379338,size.width*0.2342515,size.height*0.1946836,size.width*0.2342515,size.height*0.3432437);
    path_1.close();

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_1,paint_1_fill);

Path path_2 = Path();
    path_2.moveTo(size.width*0.6606300,size.height*0.7593550);
    path_2.lineTo(size.width*0.6606300,size.height*0.7444116);
    path_2.cubicTo(size.width*0.6606300,size.height*0.7205896,size.width*0.6412376,size.height*0.7012145,size.width*0.6174329,size.height*0.7012145);
    path_2.lineTo(size.width*0.3805102,size.height*0.7012145);
    path_2.cubicTo(size.width*0.3566882,size.height*0.7012145,size.width*0.3373130,size.height*0.7205896,size.width*0.3373130,size.height*0.7444116);
    path_2.lineTo(size.width*0.3373130,size.height*0.7593550);
    path_2.cubicTo(size.width*0.3373130,size.height*0.7831598,size.width*0.3566882,size.height*0.8025522,size.width*0.3805102,size.height*0.8025522);
    path_2.lineTo(size.width*0.6174523,size.height*0.8025522);
    path_2.cubicTo(size.width*0.6412571,size.height*0.8025522,size.width*0.6606300,size.height*0.7831771,size.width*0.6606300,size.height*0.7593550);
    path_2.close();
    path_2.moveTo(size.width*0.3724751,size.height*0.7593550);
    path_2.lineTo(size.width*0.3724751,size.height*0.7444116);
    path_2.cubicTo(size.width*0.3724751,size.height*0.7399820,size.width*0.3760785,size.height*0.7363765,size.width*0.3805102,size.height*0.7363765);
    path_2.lineTo(size.width*0.6174523,size.height*0.7363765);
    path_2.cubicTo(size.width*0.6218819,size.height*0.7363765,size.width*0.6254875,size.height*0.7399799,size.width*0.6254875,size.height*0.7444116);
    path_2.lineTo(size.width*0.6254875,size.height*0.7593550);
    path_2.cubicTo(size.width*0.6254875,size.height*0.7637846,size.width*0.6218841,size.height*0.7673902,size.width*0.6174523,size.height*0.7673902);
    path_2.lineTo(size.width*0.3805102,size.height*0.7673902);
    path_2.cubicTo(size.width*0.3760785,size.height*0.7673902,size.width*0.3724751,size.height*0.7637868,size.width*0.3724751,size.height*0.7593550);
    path_2.close();

Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
paint_2_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_2,paint_2_fill);

Path path_3 = Path();
    path_3.moveTo(size.width*0.4089738,size.height*0.8292768);
    path_3.cubicTo(size.width*0.3992516,size.height*0.8292768,size.width*0.3913917,size.height*0.8371541,size.width*0.3913917,size.height*0.8468589);
    path_3.lineTo(size.width*0.3913917,size.height*0.8932918);
    path_3.cubicTo(size.width*0.3913917,size.height*0.9001828,size.width*0.3954168,size.height*0.9064249,size.width*0.4016762,size.height*0.9092907);
    path_3.lineTo(size.width*0.4964215,size.height*0.9525225);
    path_3.cubicTo(size.width*0.4987423,size.height*0.9535780,size.width*0.5012209,size.height*0.9541057,size.width*0.5037169,size.height*0.9541057);
    path_3.cubicTo(size.width*0.5062843,size.height*0.9541057,size.width*0.5088516,size.height*0.9535433,size.width*0.5112243,size.height*0.9524186);
    path_3.lineTo(size.width*0.6062334,size.height*0.9075863);
    path_3.cubicTo(size.width*0.6123869,size.height*0.9046859,size.width*0.6163082,size.height*0.8984979,size.width*0.6163082,size.height*0.8916934);
    path_3.lineTo(size.width*0.6163082,size.height*0.8468784);
    path_3.cubicTo(size.width*0.6163082,size.height*0.8371735,size.width*0.6084504,size.height*0.8292963,size.width*0.5987261,size.height*0.8292963);
    path_3.cubicTo(size.width*0.5890017,size.height*0.8292963,size.width*0.5811440,size.height*0.8371735,size.width*0.5811440,size.height*0.8468784);
    path_3.lineTo(size.width*0.5811440,size.height*0.8805632);
    path_3.lineTo(size.width*0.5035936,size.height*0.9171679);
    path_3.lineTo(size.width*0.4265538,size.height*0.8820059);
    path_3.lineTo(size.width*0.4265538,size.height*0.8468784);
    path_3.cubicTo(size.width*0.4265538,size.height*0.8371346,size.width*0.4186960,size.height*0.8292768,size.width*0.4089738,size.height*0.8292768);
    path_3.close();

Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
paint_3_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_3,paint_3_fill);

Path path_4 = Path();
    path_4.moveTo(size.width*0.9133072,size.height*0.6609372);
    path_4.cubicTo(size.width*0.9190734,size.height*0.6531313,size.width*0.9174037,size.height*0.6421244,size.width*0.9095978,size.height*0.6363581);
    path_4.lineTo(size.width*0.7903276,size.height*0.5484173);
    path_4.cubicTo(size.width*0.7825044,size.height*0.5426511,size.width*0.7715148,size.height*0.5443035,size.width*0.7657485,size.height*0.5521267);
    path_4.cubicTo(size.width*0.7599823,size.height*0.5599325,size.width*0.7616520,size.height*0.5709394,size.width*0.7694579,size.height*0.5767057);
    path_4.lineTo(size.width*0.8887281,size.height*0.6646465);
    path_4.cubicTo(size.width*0.8918751,size.height*0.6669673,size.width*0.8955326,size.height*0.6680747,size.width*0.8991532,size.height*0.6680747);
    path_4.cubicTo(size.width*0.9045345,size.height*0.6680920,size.width*0.9098617,size.height*0.6656133,size.width*0.9133072,size.height*0.6609372);
    path_4.close();

Paint paint_4_fill = Paint()..style=PaintingStyle.fill;
paint_4_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_4,paint_4_fill);

Path path_5 = Path();
    path_5.moveTo(size.width*0.2144719,size.height*0.1675545);
    path_5.cubicTo(size.width*0.2176189,size.height*0.1698753,size.width*0.2212763,size.height*0.1709827,size.width*0.2248970,size.height*0.1709827);
    path_5.cubicTo(size.width*0.2302934,size.height*0.1709827,size.width*0.2356033,size.height*0.1685040,size.width*0.2390682,size.height*0.1638279);
    path_5.cubicTo(size.width*0.2448345,size.height*0.1560220,size.width*0.2431647,size.height*0.1450151,size.width*0.2353589,size.height*0.1392488);
    path_5.lineTo(size.width*0.1133980,size.height*0.04933762);
    path_5.cubicTo(size.width*0.1055921,size.height*0.04355406,size.width*0.09458521,size.height*0.04524111,size.width*0.08881896,size.height*0.05304697);
    path_5.cubicTo(size.width*0.08305270,size.height*0.06087013,size.width*0.08470514,size.height*0.07187706,size.width*0.09252831,size.height*0.07764332);
    path_5.lineTo(size.width*0.2144719,size.height*0.1675545);
    path_5.close();

Paint paint_5_fill = Paint()..style=PaintingStyle.fill;
paint_5_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_5,paint_5_fill);

Path path_6 = Path();
    path_6.moveTo(size.width*0.2200110,size.height*0.5423677);
    path_6.lineTo(size.width*0.09254777,size.height*0.6363560);
    path_6.cubicTo(size.width*0.08474191,size.height*0.6421222,size.width*0.08307216,size.height*0.6531292,size.width*0.08883842,size.height*0.6609350);
    path_6.cubicTo(size.width*0.09228390,size.height*0.6656112,size.width*0.09761109,size.height*0.6680898,size.width*0.1030097,size.height*0.6680898);
    path_6.cubicTo(size.width*0.1066303,size.height*0.6680898,size.width*0.1102878,size.height*0.6669824,size.width*0.1134348,size.height*0.6646617);
    path_6.lineTo(size.width*0.2408980,size.height*0.5706734);
    path_6.cubicTo(size.width*0.2487039,size.height*0.5649072,size.width*0.2503736,size.height*0.5539002,size.width*0.2446074,size.height*0.5460944);
    path_6.cubicTo(size.width*0.2388044,size.height*0.5382712,size.width*0.2278169,size.height*0.5366188,size.width*0.2200110,size.height*0.5423677);
    path_6.close();

Paint paint_6_fill = Paint()..style=PaintingStyle.fill;
paint_6_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_6,paint_6_fill);

Path path_7 = Path();
    path_7.moveTo(size.width*0.7746618,size.height*0.1334480);
    path_7.cubicTo(size.width*0.7668559,size.height*0.1392142,size.width*0.7651862,size.height*0.1502212,size.width*0.7709524,size.height*0.1580270);
    path_7.cubicTo(size.width*0.7743979,size.height*0.1627032,size.width*0.7797251,size.height*0.1651818,size.width*0.7851237,size.height*0.1651818);
    path_7.cubicTo(size.width*0.7887443,size.height*0.1651818,size.width*0.7924018,size.height*0.1640571,size.width*0.7955488,size.height*0.1617537);
    path_7.lineTo(size.width*0.9096324,size.height*0.07764548);
    path_7.cubicTo(size.width*0.9174383,size.height*0.07187922,size.width*0.9191080,size.height*0.06087229,size.width*0.9133418,size.height*0.05306643);
    path_7.cubicTo(size.width*0.9075755,size.height*0.04526057,size.width*0.8965859,size.height*0.04357352,size.width*0.8887627,size.height*0.04935708);
    path_7.lineTo(size.width*0.7746618,size.height*0.1334480);
    path_7.close();

Paint paint_7_fill = Paint()..style=PaintingStyle.fill;
paint_7_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_7,paint_7_fill);

Path path_8 = Path();
    path_8.moveTo(size.width*0.9824201,size.height*0.3394283);
    path_8.lineTo(size.width*0.8479426,size.height*0.3394283);
    path_8.cubicTo(size.width*0.8382204,size.height*0.3394283,size.width*0.8303604,size.height*0.3473056,size.width*0.8303604,size.height*0.3570105);
    path_8.cubicTo(size.width*0.8303604,size.height*0.3667153,size.width*0.8382182,size.height*0.3745926,size.width*0.8479426,size.height*0.3745926);
    path_8.lineTo(size.width*0.9824201,size.height*0.3745926);
    path_8.cubicTo(size.width*0.9921422,size.height*0.3745926,size.width*1.000002,size.height*0.3667153,size.width*1.000002,size.height*0.3570105);
    path_8.cubicTo(size.width*1.000002,size.height*0.3473056,size.width*0.9921422,size.height*0.3394283,size.width*0.9824201,size.height*0.3394283);
    path_8.close();

Paint paint_8_fill = Paint()..style=PaintingStyle.fill;
paint_8_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_8,paint_8_fill);

Path path_9 = Path();
    path_9.moveTo(size.width*0.1739307,size.height*0.3570105);
    path_9.cubicTo(size.width*0.1739307,size.height*0.3473056,size.width*0.1660730,size.height*0.3394283,size.width*0.1563486,size.height*0.3394283);
    path_9.lineTo(size.width*0.01758211,size.height*0.3394283);
    path_9.cubicTo(size.width*0.007859931,size.height*0.3394283,0,size.height*0.3473056,0,size.height*0.3570105);
    path_9.cubicTo(0,size.height*0.3667153,size.width*0.007857769,size.height*0.3745926,size.width*0.01758211,size.height*0.3745926);
    path_9.lineTo(size.width*0.1563508,size.height*0.3745926);
    path_9.cubicTo(size.width*0.1660535,size.height*0.3745904,size.width*0.1739307,size.height*0.3667153,size.width*0.1739307,size.height*0.3570105);
    path_9.close();

Paint paint_9_fill = Paint()..style=PaintingStyle.fill;
paint_9_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_9,paint_9_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}




class EarthSvg extends StatelessWidget {
  EarthSvg({Key key, @required this.size, @required this.color})
      : super(key: key);
  final size;
  final color;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size,
          size), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: EarthPainter(color: color),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class EarthPainter extends CustomPainter {
  EarthPainter({@required this.color});
  final color;
  @override
  void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.9240515,size.height*0.1092625);
    path_0.cubicTo(size.width*0.9104942,size.height*0.06666758,size.width*0.8921199,size.height*0.03616907,size.width*0.8913410,size.height*0.03488733);
    path_0.cubicTo(size.width*0.8883282,size.height*0.02992631,size.width*0.8821252,size.height*0.02734567,size.width*0.8765064,size.height*0.02863313);
    path_0.cubicTo(size.width*0.8750515,size.height*0.02896501,size.width*0.8403535,size.height*0.03705598,size.width*0.8003288,size.height*0.05702593);
    path_0.cubicTo(size.width*0.7462942,size.height*0.08397678,size.width*0.7085491,size.height*0.1199570,size.width*0.6911600,size.height*0.1610585);
    path_0.cubicTo(size.width*0.6766862,size.height*0.1952878,size.width*0.6746071,size.height*0.2371331,size.width*0.6848767,size.height*0.2833615);
    path_0.cubicTo(size.width*0.6630029,size.height*0.2589570,size.width*0.6383969,size.height*0.2376081,size.width*0.6115744,size.height*0.2196351);
    path_0.cubicTo(size.width*0.6033839,size.height*0.2034703,size.width*0.5817277,size.height*0.1636735,size.width*0.5478716,size.height*0.1220799);
    path_0.cubicTo(size.width*0.5367199,size.height*0.1083870,size.width*0.5152699,size.height*0.1255703,size.width*0.5265362,size.height*0.1394005);
    path_0.cubicTo(size.width*0.5493493,size.height*0.1674329,size.width*0.5665208,size.height*0.1950017,size.width*0.5772601,size.height*0.2139417);
    path_0.lineTo(size.width*0.4520367,size.height*0.1895543);
    path_0.lineTo(size.width*0.3330622,size.height*0.02743150);
    path_0.cubicTo(size.width*0.3446149,size.height*0.02759172,size.width*0.3562076,size.height*0.02870752,size.width*0.3677431,size.height*0.03096772);
    path_0.cubicTo(size.width*0.4043141,size.height*0.03812029,size.width*0.4404383,size.height*0.05672839,size.width*0.4751306,size.height*0.08626560);
    path_0.cubicTo(size.width*0.4887223,size.height*0.09784130,size.width*0.5063749,size.height*0.07677272,size.width*0.4929607,size.height*0.06535724);
    path_0.cubicTo(size.width*0.4546371,size.height*0.03273012,size.width*0.4142859,size.height*0.01208497,size.width*0.3730240,size.height*0.004011155);
    path_0.cubicTo(size.width*0.3100371,size.height*-0.008302692,size.width*0.2365744,size.height*0.007862095,size.width*0.1605572,size.height*0.05077746);
    path_0.cubicTo(size.width*0.1038994,size.height*0.08276371,size.width*0.06601104,size.height*0.1178971,size.width*0.06443021,size.height*0.1193734);
    path_0.cubicTo(size.width*0.05936125,size.height*0.1241055,size.width*0.05855366,size.height*0.1327000,size.width*0.06279784,size.height*0.1382275);
    path_0.cubicTo(size.width*0.06835365,size.height*0.1496144,size.width*0.08940845,size.height*0.1906930,size.width*0.1244559,size.height*0.2349187);
    path_0.cubicTo(size.width*0.1451155,size.height*0.2609941,size.width*0.1669034,size.height*0.2833101,size.width*0.1894417,size.height*0.3016492);
    path_0.cubicTo(size.width*0.1830382,size.height*0.3070108,size.width*0.1768065,size.height*0.3126184,size.width*0.1707753,size.height*0.3185178);
    path_0.cubicTo(size.width*0.1385630,size.height*0.3499948,size.width*0.1138998,size.height*0.3871252,size.width*0.09770780,size.height*0.4277174);
    path_0.cubicTo(size.width*0.08339443,size.height*0.4635832,size.width*0.07569648,size.height*0.5021670,size.width*0.07526691,size.height*0.5419352);
    path_0.cubicTo(size.width*0.07455668,size.height*0.6069663,size.width*0.09341780,size.height*0.6696856,size.width*0.1298227,size.height*0.7233241);
    path_0.cubicTo(size.width*0.1653856,size.height*0.7757152,size.width*0.2151015,size.height*0.8159412,size.width*0.2735921,size.height*0.8396476);
    path_0.cubicTo(size.width*0.2899617,size.height*0.8462680,size.width*0.3003116,size.height*0.8208335,size.width*0.2839305,size.height*0.8141960);
    path_0.cubicTo(size.width*0.2627383,size.height*0.8056072,size.width*0.2428290,size.height*0.7946037,size.width*0.2244662,size.height*0.7815173);
    path_0.cubicTo(size.width*0.2268145,size.height*0.7685054,size.width*0.2322615,size.height*0.7216762,size.width*0.2011261,size.height*0.6731990);
    path_0.cubicTo(size.width*0.1967673,size.height*0.6664183,size.width*0.2097977,size.height*0.6397879,size.width*0.2175758,size.height*0.6238806);
    path_0.cubicTo(size.width*0.2256060,size.height*0.6074870,size.width*0.2338939,size.height*0.5905383,size.width*0.2377658,size.height*0.5745795);
    path_0.cubicTo(size.width*0.2418782,size.height*0.5576250,size.width*0.2372503,size.height*0.5433943,size.width*0.2243917,size.height*0.5334093);
    path_0.cubicTo(size.width*0.2149526,size.height*0.5260794,size.width*0.2025981,size.height*0.5222857,size.width*0.1917098,size.height*0.5189383);
    path_0.cubicTo(size.width*0.1846362,size.height*0.5167639,size.width*0.1766175,size.height*0.5143034,size.width*0.1737537,size.height*0.5119173);
    path_0.cubicTo(size.width*0.1678542,size.height*0.5069792,size.width*0.1582203,size.height*0.4887316,size.width*0.1504765,size.height*0.4740774);
    path_0.cubicTo(size.width*0.1418851,size.height*0.4578211,size.width*0.1337060,size.height*0.4423487,size.width*0.1253551,size.height*0.4328214);
    path_0.cubicTo(size.width*0.1441475,size.height*0.3882352,size.width*0.1743322,size.height*0.3487817,size.width*0.2121346,size.height*0.3185979);
    path_0.cubicTo(size.width*0.2466665,size.height*0.3420984,size.width*0.2860784,size.height*0.3583147,size.width*0.3279704,size.height*0.3615991);
    path_0.cubicTo(size.width*0.2793885,size.height*0.3992044,size.width*0.2636719,size.height*0.4472296,size.width*0.2861357,size.height*0.4933607);
    path_0.cubicTo(size.width*0.3123683,size.height*0.5472281,size.width*0.3663627,size.height*0.5386221,size.width*0.4139995,size.height*0.5310404);
    path_0.cubicTo(size.width*0.4222416,size.height*0.5297243,size.width*0.4307700,size.height*0.5283682,size.width*0.4389376,size.height*0.5273497);
    path_0.cubicTo(size.width*0.4420019,size.height*0.5269663,size.width*0.4429241,size.height*0.5278017,size.width*0.4435427,size.height*0.5283453);
    path_0.cubicTo(size.width*0.4539727,size.height*0.5376150,size.width*0.4536634,size.height*0.5818865,size.width*0.4534400,size.height*0.6142161);
    path_0.cubicTo(size.width*0.4531365,size.height*0.6589339,size.width*0.4528501,size.height*0.7011741,size.width*0.4695232,size.height*0.7228606);
    path_0.cubicTo(size.width*0.4780288,size.height*0.7339156,size.width*0.4900053,size.height*0.7395690,size.width*0.5040437,size.height*0.7395690);
    path_0.cubicTo(size.width*0.5124576,size.height*0.7395690,size.width*0.5215989,size.height*0.7375434,size.width*0.5311870,size.height*0.7334350);
    path_0.cubicTo(size.width*0.5726494,size.height*0.7156966,size.width*0.6157499,size.height*0.6623099,size.width*0.6091745,size.height*0.6200698);
    path_0.cubicTo(size.width*0.6034297,size.height*0.5831397,size.width*0.5996266,size.height*0.5587408,size.width*0.6085903,size.height*0.5390742);
    path_0.cubicTo(size.width*0.6168782,size.height*0.5208723,size.width*0.6369135,size.height*0.5040209,size.width*0.6763712,size.height*0.4825174);
    path_0.cubicTo(size.width*0.6810965,size.height*0.5037748,size.width*0.6834792,size.height*0.5258906,size.width*0.6832329,size.height*0.5485785);
    path_0.cubicTo(size.width*0.6823909,size.height*0.6260207,size.width*0.6514044,size.height*0.6985019,size.width*0.5959895,size.height*0.7526611);
    path_0.cubicTo(size.width*0.5340565,size.height*0.8131889,size.width*0.4470136,size.height*0.8430809,size.width*0.3609100,size.height*0.8335994);
    path_0.cubicTo(size.width*0.3433662,size.height*0.8316997,size.width*0.3403363,size.height*0.8589710,size.width*0.3579030,size.height*0.8609050);
    path_0.cubicTo(size.width*0.4521513,size.height*0.8712734,size.width*0.5474420,size.height*0.8385433,size.width*0.6152115,size.height*0.7722991);
    path_0.cubicTo(size.width*0.6758843,size.height*0.7130015,size.width*0.7098034,size.height*0.6336596,size.width*0.7107256,size.height*0.5488703);
    path_0.cubicTo(size.width*0.7119513,size.height*0.4364492,size.width*0.6542110,size.height*0.3368513,size.width*0.5663146,size.height*0.2794763);
    path_0.cubicTo(size.width*0.5844770,size.height*0.2665387,size.width*0.5980056,size.height*0.2553521,size.width*0.6055088,size.height*0.2488576);
    path_0.cubicTo(size.width*0.6375550,size.height*0.2718259,size.width*0.6659813,size.height*0.3001214,size.width*0.6896307,size.height*0.3330861);
    path_0.cubicTo(size.width*0.7464030,size.height*0.4122392,size.width*0.7689184,size.height*0.5087301,size.width*0.7530414,size.height*0.6048033);
    path_0.cubicTo(size.width*0.7202506,size.height*0.8031238,size.width*0.5320805,size.height*0.9378380,size.width*0.3335319,size.height*0.9050678);
    path_0.cubicTo(size.width*0.2373591,size.height*0.8892006,size.width*0.1531342,size.height*0.8368782,size.width*0.09636180,size.height*0.7577251);
    path_0.cubicTo(size.width*0.03958372,size.height*0.6785777,size.width*0.01706837,size.height*0.5820754,size.width*0.03295111,size.height*0.4860079);
    path_0.cubicTo(size.width*0.03580347,size.height*0.4687216,size.width*0.008694557,size.height*0.4641840,size.width*0.005830736,size.height*0.4815332);
    path_0.cubicTo(size.width*-0.01125481,size.height*0.5848448,size.width*0.01296738,size.height*0.6886142,size.width*0.07400683,size.height*0.7737296);
    path_0.cubicTo(size.width*0.1350577,size.height*0.8588337,size.width*0.2256404,size.height*0.9151043,size.width*0.3290529,size.height*0.9321732);
    path_0.cubicTo(size.width*0.3506804,size.height*0.9357380,size.width*0.3723309,size.height*0.9375004,size.width*0.3938325,size.height*0.9375004);
    path_0.cubicTo(size.width*0.4751077,size.height*0.9375004,size.width*0.5541720,size.height*0.9122890,size.width*0.6215462,size.height*0.8640579);
    path_0.cubicTo(size.width*0.7067563,size.height*0.8030666,size.width*0.7630877,size.height*0.7125896,size.width*0.7801617,size.height*0.6092780);
    path_0.cubicTo(size.width*0.7926766,size.height*0.5335753,size.width*0.7829912,size.height*0.4576265,size.width*0.7529096,size.height*0.3889505);
    path_0.cubicTo(size.width*0.7667934,size.height*0.3848592,size.width*0.7904200,size.height*0.3769170,size.width*0.8162974,size.height*0.3640081);
    path_0.cubicTo(size.width*0.8703205,size.height*0.3370572,size.width*0.9080714,size.height*0.3010770,size.width*0.9254548,size.height*0.2599755);
    path_0.cubicTo(size.width*0.9428553,size.height*0.2188626,size.width*0.9423685,size.height*0.1667462,size.width*0.9240515,size.height*0.1092625);
    path_0.close();
    path_0.moveTo(size.width*0.1261570,size.height*0.4868948);
    path_0.cubicTo(size.width*0.1363865,size.height*0.5062697,size.width*0.1460605,size.height*0.5245802,size.width*0.1561125,size.height*0.5329802);
    path_0.cubicTo(size.width*0.1632320,size.height*0.5389254,size.width*0.1731408,size.height*0.5419695,size.width*0.1836281,size.height*0.5451910);
    path_0.cubicTo(size.width*0.2104965,size.height*0.5534422,size.width*0.2136180,size.height*0.5574934,size.width*0.2110406,size.height*0.5681078);
    path_0.cubicTo(size.width*0.2078789,size.height*0.5811598,size.width*0.2002497,size.height*0.5967467,size.width*0.1928783,size.height*0.6118128);
    path_0.cubicTo(size.width*0.1786794,size.height*0.6408351,size.width*0.1652710,size.height*0.6682322,size.width*0.1779807,size.height*0.6880305);
    path_0.cubicTo(size.width*0.1960055,size.height*0.7160914,size.width*0.1990927,size.height*0.7437175,size.width*0.1987834,size.height*0.7609008);
    path_0.cubicTo(size.width*0.1169011,size.height*0.6871379,size.width*0.08356053,size.height*0.5706313,size.width*0.1140602,size.height*0.4647390);
    path_0.cubicTo(size.width*0.1181039,size.height*0.4716627,size.width*0.1223538,size.height*0.4797079,size.width*0.1261570,size.height*0.4868948);
    path_0.close();
    path_0.moveTo(size.width*0.7912791,size.height*0.2170030);
    path_0.lineTo(size.width*0.7522109,size.height*0.1224175);
    path_0.cubicTo(size.width*0.7712209,size.height*0.1046563,size.width*0.7932780,size.height*0.09128956,size.width*0.8120647,size.height*0.08187679);
    path_0.cubicTo(size.width*0.8280677,size.height*0.07385448,size.width*0.8432918,size.height*0.06785777,size.width*0.8555031,size.height*0.06360629);
    path_0.close();
    path_0.moveTo(size.width*0.8808479,size.height*0.07425502);
    path_0.cubicTo(size.width*0.8863064,size.height*0.08597377,size.width*0.8926354,size.height*0.1010857,size.width*0.8980423,size.height*0.1181660);
    path_0.cubicTo(size.width*0.9039704,size.height*0.1369114,size.width*0.9094117,size.height*0.1601430,size.width*0.9104942,size.height*0.1843758);
    path_0.lineTo(size.width*0.8189379,size.height*0.2221127);
    path_0.close();
    path_0.moveTo(size.width*0.7164819,size.height*0.1717530);
    path_0.cubicTo(size.width*0.7205370,size.height*0.1621743,size.width*0.7257778,size.height*0.1532937,size.width*0.7318319,size.height*0.1450940);
    path_0.lineTo(size.width*0.7763070,size.height*0.2527543);
    path_0.lineTo(size.width*0.7363969,size.height*0.3480951);
    path_0.cubicTo(size.width*0.7307895,size.height*0.3362104,size.width*0.7241855,size.height*0.3206006,size.width*0.7185839,size.height*0.3028680);
    path_0.cubicTo(size.width*0.7073405,size.height*0.2673627,size.width*0.6978556,size.height*0.2157842,size.width*0.7164819,size.height*0.1717530);
    path_0.close();
    path_0.moveTo(size.width*0.8045558,size.height*0.3391572);
    path_0.cubicTo(size.width*0.7891541,size.height*0.3468820,size.width*0.7744570,size.height*0.3527299,size.width*0.7624863,size.height*0.3569471);
    path_0.lineTo(size.width*0.8039028,size.height*0.2580300);
    path_0.lineTo(size.width*0.9093257,size.height*0.2145711);
    path_0.cubicTo(size.width*0.9077965,size.height*0.2263699,size.width*0.9048811,size.height*0.2380658,size.width*0.9001329,size.height*0.2492810);
    path_0.cubicTo(size.width*0.8815123,size.height*0.2933122,size.width*0.8378792,size.height*0.3224660,size.width*0.8045558,size.height*0.3391572);
    path_0.close();
    path_0.moveTo(size.width*0.3088458,size.height*0.3313409);
    path_0.cubicTo(size.width*0.3039887,size.height*0.3303911,size.width*0.2991947,size.height*0.3292295,size.width*0.2944694,size.height*0.3279077);
    path_0.lineTo(size.width*0.4466184,size.height*0.2164880);
    path_0.lineTo(size.width*0.5718991,size.height*0.2408811);
    path_0.cubicTo(size.width*0.5262612,size.height*0.2768041,size.width*0.4151966,size.height*0.3521577,size.width*0.3088458,size.height*0.3313409);
    path_0.close();
    path_0.moveTo(size.width*0.1697959,size.height*0.2454129);
    path_0.cubicTo(size.width*0.1372571,size.height*0.2103768,size.width*0.1134073,size.height*0.1729146,size.width*0.09971247,size.height*0.1489277);
    path_0.lineTo(size.width*0.2591413,size.height*0.1799813);
    path_0.close();
    path_0.moveTo(size.width*0.1979529,size.height*0.06217578);
    path_0.lineTo(size.width*0.2646570,size.height*0.1530705);
    path_0.lineTo(size.width*0.1041972,size.height*0.1218224);
    path_0.cubicTo(size.width*0.1243986,size.height*0.1058865,size.width*0.1577449,size.height*0.08196262,size.width*0.1979529,size.height*0.06217578);
    path_0.close();
    path_0.moveTo(size.width*0.3044298,size.height*0.1608182);
    path_0.lineTo(size.width*0.2235612,size.height*0.05061724);
    path_0.cubicTo(size.width*0.2477719,size.height*0.04067804,size.width*0.2737582,size.height*0.03285600,size.width*0.3003975,size.height*0.02937700);
    path_0.lineTo(size.width*0.4122697,size.height*0.1818124);
    path_0.close();
    path_0.moveTo(size.width*0.2958727,size.height*0.1871339);
    path_0.lineTo(size.width*0.4098928,size.height*0.2093354);
    path_0.lineTo(size.width*0.2635573,size.height*0.3164922);
    path_0.cubicTo(size.width*0.2359616,size.height*0.3037607,size.width*0.2111265,size.height*0.2854558,size.width*0.1893958,size.height*0.2651082);
    path_0.close();
    path_0.moveTo(size.width*0.6689024,size.height*0.4553263);
    path_0.cubicTo(size.width*0.6193411,size.height*0.4817049,size.width*0.5950731,size.height*0.5024244,size.width*0.5835605,size.height*0.5276987);
    path_0.cubicTo(size.width*0.5711946,size.height*0.5548384,size.width*0.5757251,size.height*0.5839694,size.width*0.5819969,size.height*0.6242869);
    path_0.cubicTo(size.width*0.5857027,size.height*0.6480620,size.width*0.5574196,size.height*0.6923335,size.width*0.5203618,size.height*0.7081893);
    path_0.cubicTo(size.width*0.5066498,size.height*0.7140544,size.width*0.4968842,size.height*0.7133620,size.width*0.4913226,size.height*0.7061236);
    path_0.cubicTo(size.width*0.4804000,size.height*0.6919215,size.width*0.4806979,size.height*0.6489375,size.width*0.4809327,size.height*0.6144049);
    path_0.cubicTo(size.width*0.4812592,size.height*0.5666258,size.width*0.4815455,size.height*0.5253641,size.width*0.4618138,size.height*0.5078261);
    path_0.cubicTo(size.width*0.4547173,size.height*0.5015204,size.width*0.4456390,size.height*0.4988539,size.width*0.4355526,size.height*0.5000898);
    path_0.cubicTo(size.width*0.4269096,size.height*0.5011656,size.width*0.4181406,size.height*0.5025618,size.width*0.4096694,size.height*0.5039122);
    path_0.cubicTo(size.width*0.3591344,size.height*0.5119574,size.width*0.3273346,size.height*0.5151789,size.width*0.3108619,size.height*0.4813444);
    path_0.cubicTo(size.width*0.2841711,size.height*0.4265444,size.width*0.3381999,size.height*0.3859522,size.width*0.3626684,size.height*0.3710462);
    path_0.cubicTo(size.width*0.3676514,size.height*0.3680135,size.width*0.3722736,size.height*0.3644373,size.width*0.3765694,size.height*0.3604547);
    path_0.cubicTo(size.width*0.4357072,size.height*0.3533937,size.width*0.4915861,size.height*0.3280450,size.width*0.5413822,size.height*0.2962934);
    path_0.cubicTo(size.width*0.6010871,size.height*0.3319303,size.width*0.6469197,size.height*0.3883268,size.width*0.6689024,size.height*0.4553263);
    path_0.close();
    path_0.moveTo(size.width*0.6689024,size.height*0.4553263);

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = color.withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}