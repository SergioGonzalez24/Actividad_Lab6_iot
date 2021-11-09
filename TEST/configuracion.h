#include <ESP8266WiFi.h>


void wifiSetup() {
  // Sustituir con datos de red a conectar
const char* ssid     = "LaRataPelona";
const char* password = "ibbNfwa9Etppt";
byte cont = 0;
byte max_intentos = 50;

 WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED and cont < max_intentos)  {
    digitalWrite(LED_BUILTIN,HIGH);
    delay(50);
    digitalWrite(LED_BUILTIN,LOW);
    delay(50);
  }
 /* 
  if (cont < max_intentos) {
    for(int i=0;i==5;i++) {
      digitalWrite(LED_BUILTIN,HIGH);
      delay(1000);
      digitalWrite(LED_BUILTIN,LOW);
      delay(100);
      Serial.println("CONECTADO");
    }
  } else {
    digitalWrite(LED_BUILTIN,LOW);
  }*/
}
