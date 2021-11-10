#include "wifiSetup.h"
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266HTTPClient.h>

String url="http://192.168.3.42/actividad6/recibe.php";

String id="tarjeta1";
int valorSensor=0;
int ledEstado=0;

WiFiClient wifiClient;
HTTPClient http;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.println("\n");
  wifiSetup();
  
}

void loop() {
  // put your main code here, to run repeatedly:

  valorSensor=random(0,60);
  int led=random(0,2);
  digitalWrite(LED_BUILTIN, led);

  //Se invierten los valores para encender el led del NODE MCU ESP8266
  if(led==0) {
    ledEstado=1; 
  } else {
    ledEstado=0;
  }
  
  
  http.begin(wifiClient,url);
  http.addHeader("Content-Type","application/x-www-form-urlencoded");

  valorSensor=random(0,60);

  String postData="id="+id+"&valorSensor="+String(valorSensor)+"&ledEstado="+String(ledEstado);
  int httpCode=http.POST(postData);

  String respuesta=http.getString();

  //Serial.println(postData);
  Serial.println(httpCode);
  Serial.println(respuesta);
  http.end();
  delay(5000);  
 
  
}
