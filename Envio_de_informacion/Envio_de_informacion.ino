#include "configuracion.h"
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266HTTPClient.h>

void setup() {
  pinMode(LED_BUILTIN, OUTPUT);
  wifiSetup();
}

void loop() {
  // put your main code here, to run repeatedly:

}
