#include "configuracion.h"
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266HTTPClient.h>

String urlRecibe=https://ejercicioiot.000webhostapp.com/servidoriot/prueba_recibe.php;
String dispositivo="tarjeta1";
int valSensor=0;
int ledEstado=0;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_BUILTIN, OUTPUT);
  wifiSetup();

}

void loop() {
  // put your main code here, to run repeatedly:
    digitalWrite(LED_BUILTIN,LOW);
    HTTPClient http;
    http.begin(url)

    //LEER VALORES DE SENSORES
    

    String postData="dispositivoe="+dispositivo+"&valSensor="+String(valSensor)+"&ledEstado="+String(ledEstado);

    int httpCode=htto.POST(postData);
    http.end();
    delay(500);
    
}
