#include <LowPower.h>
#include <Adafruit_BME280.h>
#include <Adafruit_Sensor.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <EEPROM.h>

#define SEALEVELPRESSURE_HPA (1013.25)

Adafruit_BME280 bme;


const int chipSelect = 4;         //SD saves data from Arduino through pin 4

int wakePin = 2;                    //pin that wakes up Arduino
int sleepStatus = 0;               //sleep pin
unsigned long dropcount = 1;      //this creates a variable that counts each raindrop that a current can flow through

const int rain = 1;  //percentage humidity to wake the Arduino from sleep



unsigned long startMillis;
unsigned long currentMillis;
const unsigned long period = 30*60000;  //period that we want BME to run for



void setup() {

Serial.begin(115200);

  if (!bme.begin(0x76)) {
    Serial.println("Could not find a valid BME280 sensor, check wiring!");
    while (1);
  }

pinMode(wakePin, INPUT);
  
  // Open serial communications and wait for port to open:
  

  
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }


  Serial.print("Initializing SD card...");

  // see if the card is present and can be initialized:
  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    // don't do anything more:
    while (1);
  }
  Serial.println("card initialized.");

  startMillis = millis();     //initialize start time
  
}

  


void loop() {
  currentMillis = millis(); 
    int sensor = digitalRead(2);
   
  digitalWrite(LED_BUILTIN,HIGH);
  
  if (bme.readHumidity() >= rain)   {  
                                                      //all statements below this only need to work if 
                                                      //the BME reads a certain humidity level
  if(currentMillis - startMillis <= period)  {
  
  if (sensor > 0) {
  File dataFile = SD.open("mr1.csv", FILE_WRITE);     //insert file name ___.csv, formats as Excel spreadsheet

  // if the file is available, write to it:
  if (dataFile) {
    
    delay(100);
    dataFile.print(currentMillis);
    dataFile.print(",");
    dataFile.println(dropcount);
    dataFile.close();
    // print to the serial port too:
    Serial.print(dropcount);
    Serial.print("\t");
    Serial.print(currentMillis);
    Serial.print("\t");
    Serial.print(sensor);
    Serial.println();
    dropcount = dropcount + 1;
    }
  
  
  // if the file isn't open, pop up an error:
  else {              //connected to SD datalog if statement
    Serial.println("error opening datalog.txt");
  }

 
  }
  else  {         //connected to analog sensor if statement

    Serial.println(sensor);
    delay(5);
   

  }

  
  }
 
  
  else    {                                //connected to millis statement, delay for 3 hours before program runs again
    delay(3 * 60000);
    
  }

  
  }
else    //connected to BME if statement
  {
 Serial.println("Sleeping");
  digitalWrite(LED_BUILTIN,LOW);
  delay(5);
  LowPower.powerDown(SLEEP_8S, ADC_OFF, BOD_OFF);  //Arduino sleeps for 8 seconds, then checks BME again

  }
  }

  
  
