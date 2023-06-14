//Created by Dmitry Zinchenko
//https://personal-website-1c6ea.web.app/#/
//29th of April 2021

//Project website: https://greenhouse-auto.web.app/

#include "DHT.h"
#include <SoftwareSerial.h>
#include <CyberLib.h>
#include <WiFiEsp.h>
#include <ArduinoJson.h>
#include <avr/pgmspace.h> 

// Digital pin connected to the DHT sensor
// Feather HUZZAH ESP8266 note: use pins 3, 4, 5, 12, 13 or 14 --
// Pin 15 can work but DHT must be disconnected during program upload.

// Connect pin 1 (on the left) of the sensor to +5V
// NOTE: If using a board with 3.3V logic like an Arduino Due connect pin 1
// to 3.3V instead of 5V!
// Connect pin 2 of the sensor to whatever your DHTPIN is
// Connect pin 3 (on the right) of the sensor to GROUND (if your sensor has 3 pins)
// Connect pin 4 (on the right) of the sensor to GROUND and leave the pin 3 EMPTY (if your sensor has 4 pins)
// Connect a 10K resistor from pin 2 (data) to pin 1 (power) of the sensor

// Initialize DHT sensor.
// Note that older versions of this library took an optional third parameter to
// tweak the timings for faster processors.  This parameter is no longer needed
// as the current DHT reading algorithm adjusts itself to work on faster procs.

//WiFi settings
const char ssid[] = "Xiaomi Mi A1";
const char pass[] = "ardtest123";

//

char status = WL_IDLE_STATUS;
WiFiEspClient client;
StaticJsonDocument<210> docGet;
StaticJsonDocument<60> docSend;
char connCheck = 1;

//

//DHT; Version:DHT11
DHT dht(5, DHT11);

//

//TX, RX
SoftwareSerial ESPserial(9, 10);
//Rerouting RX and TX since the Arduino Nano clone has too much electrical resistance on them. 

void setup()
{
  D0_In;
  D0_Out;
  D1_Out;
  D9_In;
  Serial.begin(9600);
  ESPserial.begin(9600);
  WiFi.init(&ESPserial);
  if (WiFi.status() == WL_NO_SHIELD) {
  //  Serial.println(F("WiFi shield not present"));
    while (true);
  }
  while (status != WL_CONNECTED) {
  //  Serial.print(F("Attempting to connect to WPA SSID: "));
  //  Serial.println(ssid);
    // Connect to WPA/WPA2 network
    status = WiFi.begin(ssid, pass);
  }
  pinMode(4, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(2, OUTPUT);
  dht.begin();
}

void loop()
{
  Start
  if (D0_Read == 1) D10_High; else D10_Low;
  if (D9_Read == 1) D1_High; else D1_Low;
  //
  firebaseRead();
  temperatureCheck();
  moistureCheck();
  lightCheck();
  firebaseWrite();
  //

//Set delay to decrease database data transmisson frequency if needed. 
//  delay(1000);

  End;
}

void firebaseRead() {
//Reads data from the database.  

    docSend.clear();
    if (client.connectSSL("greenhouse-e0870-default-rtdb.firebaseio.com", 443)) {
    Serial.println(F("ConnectedRead"));
    client.println(F("GET /data.json?orderBy=\"$key\"&endAt=\"S\" HTTP/1.1"));
    client.println(F("Host: greenhouse-e0870-default-rtdb.firebaseio.com"));
    client.println(F("Connection: close"));
    client.println();
  }
 while (client.available() == false) {
  } 
 while (client.available()) {
docGet.clear();
deserializeJson(docGet, client.readStringUntil('\r'));
Serial.println(docGet["ALControls"]["turnOnPoint"].as<int>());  
  }
  client.stop(); 
}

void firebaseWrite() {
//Writes data to the database.

    connCheck == 0 ? connCheck = 1 : connCheck = 0;
    docSend["connCheck"] = connCheck;
    String content;
    serializeJsonPretty(docSend, content);
    Serial.println(content);
  if (client.connectSSL("greenhouse-e0870-default-rtdb.firebaseio.com", 443)) {
    Serial.println(F("ConnectedWrite"));
    client.println(F("PATCH /data/Status.json HTTP/1.1"));
    client.println(F("Host: greenhouse-e0870-default-rtdb.firebaseio.com"));
    client.println(F("Accept: */*"));
    client.println("Content-Length: " + String(content.length()));
    client.println(F("Content-Type: application/json"));
    client.println();
    client.println(content);
    }  
    client.stop();
  }

void temperatureCheck() {
//Checks greenhouse internal temprature using DHT11.
//Data pin for DHT11 is 5.
//Controller pin for cooling is 2.

    //  docSend["temperature"] = dht.readTemperature();
    docSend["temperature"] = 22; //Debugging, otherwise does not send data to the database. 
    docSend["cooling"] = false;
    if (docGet["CoolingControls"]["isAuto"]) {
      if (docSend["temperature"] >= docGet["CoolingControls"]["turnOnPoint"]) {
        digitalWrite(2, HIGH);
        docSend["cooling"] = true;
        }
      else if (docSend["temperature"] <= docGet["CoolingControls"]["turnOffPoint"]) {
        digitalWrite(2, LOW);
        }  
      }
     else if (!docGet["CoolingControls"]["isAuto"]) {
      if (docGet["CoolingControls"]["isRunning"]) {
        digitalWrite(2, HIGH);
        docSend["cooling"] = true;
        }
      else if (!docGet["CoolingControls"]["isRunning"]) {
        digitalWrite(2, LOW);
        } 
      
      }
  } 

void moistureCheck() {
//Checks moisture of the soil.
//Moisture sensor pin is 14.
//Water pump control pin is 3.

  docSend["moisture"] = analogRead(14);
  docSend["waterPump"] = false;
  
  if (docGet["MoistControls"]["isAuto"]) {
      if (docSend["moisture"] >= docGet["MoistControls"]["turnOnPoint"]) {
        digitalWrite(3, HIGH);
        docSend["waterPump"] = true;
        }
      else if (docSend["moisture"] <= docGet["MoistControls"]["turnOffPoint"]) {
        digitalWrite(3, LOW);
        }  
      }
     else if (!docGet["MoistControls"]["isAuto"]) {
      if (docGet["MoistControls"]["isRunning"]) {
        digitalWrite(3, HIGH);
        docSend["waterPump"] = true;
        }
      else if (!docGet["MoistControls"]["isRunning"]) {
        digitalWrite(3, LOW);
        } 
      }
  }

void lightCheck() {
//Checks light intensity.
//Light intensity sensor pin is 17.
//Artificial light 220V control pin is 4.

  docSend["lightIntensity"] = analogRead(17);
  docSend["artificialLight"] = false;
  //turnOff and turnOn values are flipped.

if (docGet["ALControls"]["isAuto"]) {
      if (docSend["lightIntensity"] <= docGet["ALControls"]["turnOffPoint"]) {
        digitalWrite(4, LOW);//Flipped, since the relay is different.
        docSend["artificialLight"] = true;
        }
      else if (docSend["lightIntensity"] >= docGet["ALControls"]["turnOnPoint"]) {
        digitalWrite(4, HIGH);
        }  
      }
     else if (!docGet["ALControls"]["isAuto"]) {
      if (docGet["ALControls"]["isRunning"]) {
        digitalWrite(4, LOW);//Flipped, since the relay is different.
        docSend["artificialLight"] = true;
        }
      else if (!docGet["ALControls"]["isRunning"]) {
        digitalWrite(4, HIGH);
        } 
      }
  }     
