#include "wifiSetup.h"
#include "sensores.h"
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266HTTPClient.h>

//llenar con url de base de datos local
String url="";

String id="tarjeta1";
int valorSensor=0;
int ledEstado=0;

WiFiClient wifiClient;
HTTPClient http;

void setup() {

  Serial.begin(115200);
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.println("\n");
  wifiSetup();
  
}

void loop() {

  int led = random(0,2);
  digitalWrite(LED_BUILTIN, led);

  //Se invierten los valores para encender el led del NODE MCU ESP8266
  if(led==0) {
    ledEstado=1; 
  } else {
    ledEstado=0;
  }

//CODIGO SENSORES

/*¿Que sensor se desea usar?
*res = 1 --> para utilizar fotoresistencia
*res = 2 --> para utilizar el sensor de humedad
*/
int res=1;

if(res==1) {
	valorSensor=valFotores();
}
else if(res==2) {
	valorSensor=valHumedad();
}
  
  
  http.begin(wifiClient,url);
  http.addHeader("Content-Type","application/x-www-form-urlencoded");


  String postData="id="+id+"&valorSensor="+String(valorSensor)+"&ledEstado="+String(ledEstado);
  int httpCode=http.POST(postData);

  String respuesta=http.getString();

  //Serial.println(postData);
  Serial.println(httpCode);
  Serial.println(respuesta);
  http.end();
  delay(5000);  
 
  
}
