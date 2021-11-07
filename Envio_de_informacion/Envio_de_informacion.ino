#include "configuracion.h"
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266HTTPClient.h>

#include <ESP8266WiFi.h>
#include <ESPAsyncWebServer.h>
#include <FS.h>
#include "config.h"  // Sustituir con datos de vuestra red
#include "Server.hpp"
#include "ESP8266_Utils.hpp"


int estado=0;

String urlRecibe=https://ejercicioiot.000webhostapp.com/servidoriot/prueba_recibe.php;
String urlEnvia=https://ejercicioiot.000webhostapp.com/servidoriot/;

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  wifiSetup();
  SPIFFS.begin();
}

void loop() {
  //Apagar led antes de iniciar
  digitalWrite(LED_BUILTIN,LOW);

  HTTPClient http;

    

  String peticion = client.readStringUntil('\r'); //lee la peticion del cliente
  Serial.println(peticion);
  client.flush(); //limpia la peticion del cliente



  if(peticion.indexOf("RUN=START") != -1)
  {
    estado=1;
  }
  if(peticion.indexOf("RUN=BREAK") != -1)
  {
    estado=0;
  }

  digitalWrite(LED_BUILTIN, estado);

  client.println("HTTP/1.1 200 OK");
  client.println("");
  client.println("");
  client.println("");
  client.println(""); 

    //INICIA LA PAGINA

client.println("<!DOCTYPE html><html lang='es'><head><meta charset='UTF-8'>");
client.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
client.println("<title>Activiad 6 Lab</title></head>");
client.println("<body style='font-family: Century gothic; width: 800;'><center>");
client.println("<div style='box-shadow: 0px 0px 20px 8px rgba(0,0,0,0.22); padding: 20px; width: 300px; display: inline-block; margin: 30px;'> ");
client.println("<h1>Actividad 6</h1>");

if(estado==1)
  client.println("<h2>CAPTURANDO DATOS</h2>");
else
  client.println("<h2>APAGADO</h2>");
        
client.println("<button style='background-color:blue;  color:white; border-radius: 10px; border-color: blue;' ");
client.println("type='button' onClick=location.href='/RUN=START'><h2>RUN</h2>");
client.println("</button> <button style='background-color:red; color:white; border-radius: 10px; border-color: red;' ");
client.println("type='button' onClick=location.href='/RUN=BREAK'><h2>BREAK</h2>");
client.println("</button></div></center></body>");
client.println("<footer><hr>Actividad 6 laboratorio IOT<br>Sergio Gonzalez A01745446<br>Miguel A0</footer></html>");

    //FIN DE LA PAGINA

  delay(10);
  Serial.println("Peticion finalizada");
  Serial.println("");
  

}
