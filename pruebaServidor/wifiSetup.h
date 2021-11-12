#include <ESP8266WiFi.h>

void wifiSetup() {
  // Sustituir con datos de red a conectar
  /*
   * REDES GUARDADAS
   * ------------------------
   * ssid LaRataPelona
   * password ibbNfwa9Etppt
   * ------------------------
   * ssid Socios_CGH
   * password ""
   * -----------------------
   * ssid abcdefg
   * password 123456789
   */
  
  const char* ssid     = "";
  const char* password = "";
  byte cont = 0;
  byte max_intentos = 50;

  WiFi.begin(ssid, password);
  Serial.println("\n");
  
  while (WiFi.status() != WL_CONNECTED and cont < max_intentos)  {
    cont++;
    digitalWrite(LED_BUILTIN,0);
    delay(500);
    digitalWrite(LED_BUILTIN,1);
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

}
