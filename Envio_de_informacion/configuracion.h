#include <ESP8266WiFi.h>


void wifiSetup() {
  // Sustituir con datos de red a conectar
const char* ssid     = "";
const char* password = "";
byte cont = 0;
byte max_intentos = 50;

 WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED and cont < max_intentos)  {
    digitalWrite(LED_BUILTIN,HIGH);
    delay(100);
    digitalWrite(LED_BUILTIN,LOW);
    delay(100);
  }
  
  if (cont < max_intentos) {
    for(int i=0;i==5;i++) {
      digitalWrite(LED_BUILTIN,HIGH);
      delay(1000);
      digitalWrite(LED_BUILTIN,LOW);
      delay(100); 
    }
  } else {
    digitalWrite(LED_BUILTIN,LOW);
  }
}
