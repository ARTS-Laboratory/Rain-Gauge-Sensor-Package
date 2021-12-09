#include <SPI.h>
#include <SD.h>
#include <string.h>

File myFile;

int LED = 2;
int PPin = 3;
unsigned long hours = 10; //0.05 = 3 min
unsigned long ms = hours*3600*1000;
int rate = 2; //10 a second = 100
unsigned long t;
String fileName = "4_26_s1.CSV";
bool finished = false;
float rainfall = 0;
float resistance = 0;
float sameDrop = 0;



void setup() {
  Serial.begin(9600);
  pinMode(LED, OUTPUT);
  pinMode(PPin, INPUT);
  while (!Serial){;}
}

void loop() {
  ReadWrite();
  if(finished){
     Serial.print("Finished");
     digitalWrite(LED, LOW);
     while(1){digitalWrite(LED, LOW);delay(1000);digitalWrite(LED, HIGH);delay(1000);};
  }
}

int ReadWrite(){
  unsigned long data;
  while (!Serial) {;}
  Serial.print("Initializing SD card...");
  
  while(!SD.begin(10)) {
    Serial.println("initialization failed!");
    digitalWrite(LED, LOW);
    finished = true;
    break;
    delay(1000);
  }
  
  digitalWrite(LED, HIGH);
  myFile = SD.open(fileName, FILE_WRITE);
  
  if(myFile){
    digitalWrite(2, HIGH);
    Serial.println(fileName);
    Serial.println(ms);
    while(true) { 
      t = millis();
      sameDrop = resistance;
      resistance = analogRead(A0);
      if(resistance > 800 && sameDrop < 800){ //Testing to make sure it is the same rainfall sensor
        rainfall = rainfall + 1;  //Add one to the drop count
        //rainfall = rainfall+0.001732; //rain fall in inches change to this for actual rainfall
      }
      myFile.print(t);
      myFile.print(",");
      myFile.print(resistance);
      myFile.print(",");
      myFile.println(rainfall);
      Serial.print(t);
      Serial.print(", ");
      Serial.print(resistance);
      Serial.print(", ");
      Serial.println(rainfall);
      delay(rate);
      if(digitalRead(PPin)!=0){// || millis()>ms){
        //Serial.println(digitalRead(PPin));
        finished = true;
        break;
      }
    }
    myFile.close();
    finished = true;
  }
  
  else{
    Serial.println("Failed to collect data");
    digitalWrite(2, LOW);
  }
}
