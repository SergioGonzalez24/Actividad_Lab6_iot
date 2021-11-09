//#include "configuracion.h"
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266HTTPClient.h>


// Sustituir con datos de red a conectar
const char* ssid     = "LaRataPelona";
const char* password = "ibbNfwa9Etppt";

byte cont = 0;
byte max_intentos = 50;

String urlRecibe="http://localhost/servidorPrueba/recibe.php";
String id="tarjeta1";
int valSensor=0;
int ledEstado=0;
WiFiClient wifiClient;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial.println("\n");

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED and cont < max_intentos)  {
    cont++;
    delay(500);
    Serial.print('-');
  }

  Serial.println("");

  if (cont < max_intentos) {
    Serial.print("*************************************************************");
    Serial.print("Conectado a:\t");
    Serial.println(WiFi.SSID());
    Serial.print("IP address:\t");
    Serial.println(WiFi.localIP());
    Serial.print("MAC address:\t");
    Serial.println(WiFi.macAddress());
    Serial.print("*************************************************************");

  }

  else {
    Serial.print("oooooooooooooooooooooooooooooooooooooooooooooooooooo");
    Serial.println("ERROR");
    Serial.print("oooooooooooooooooooooooooooooooooooooooooooooooooooo");
  }

  
  pinMode(LED_BUILTIN, OUTPUT);
  //wifiSetup();

}

void loop() {
  // put your main code here, to run repeatedly:
    HTTPClient http;
    http.begin(wifiClient,urlRecibe);
    http.addHeader("Content-Type","application/x-www-form-urlencoded");
    //LEER VALORES DE SENSORES

    ledEstado=random(0,1);
    valSensor=random(1,60);

    String postData="id="+id+"&valSensor="+String(valSensor)+"&ledEstado="+String(ledEstado);
    int httpCode=http.POST(postData);
    String respuesta=http.getString();
    
    Serial.println(httpCode);
    Serial.println(respuesta);
    Serial.println(postData);
    http.end();
    
    delay(1000);
    
}
