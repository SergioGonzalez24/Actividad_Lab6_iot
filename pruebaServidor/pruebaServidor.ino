#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266HTTPClient.h>

// Sustituir con datos de red a conectar
const char* ssid     = "LaRataPelona";
const char* password = "ibbNfwa9Etppt";

String url="http://192.168.3.42./actividad6/recibe.php";

String id="tarjeta1";
int valSensor=0;
int ledEstado=0;

WiFiClient wifiClient;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.println("\n");

  WiFi.begin(ssid, password);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(LED_BUILTIN, LOW);
  
  HTTPClient http;
  http.begin(wifiClient,url);
  http.addHeader("Content-Type","application/x-www-forum-urlencoded");

  valSensor=random(0,60);
  ledEstado=random(0,1);
  String postData="id="+id+"&valor="+String(valSensor)+"&led="+String(ledEstado);
  int httpCode=http.POST(postData);

  String respuesta=http.getString();

  Serial.println(httpCode);
  Serial.println(respuesta);

  http.end();
  delay(500);  
  digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);                       // wait for a second

  
  
  
}
