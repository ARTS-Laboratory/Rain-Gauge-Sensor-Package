#include <RTClib.h>     // DS3231 library
#include <avr/sleep.h>  // AVR library for controlling the sleep modes
#include <Adafruit_BME280.h>
#include <SPI.h>
#include <Wire.h>
#include <SD.h>

#define SEALEVELPRESSURE_HPA (1013.25)
#define chipSelect 4


File myFile;

Adafruit_BME280 bme;

const int alarmPin = 2; // The number of the pin for monitoring alarm status on DS3231

unsigned long dropcount = 1;    //variable that we store raindrop counts in

const int rain = 45;    //% humidity that wakes the system

RTC_DS3231 rtc;

int sensor = digitalRead(3);

void setup () {
  Serial.begin(115200); // Start serial port for monitoring

  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }

  if (!bme.begin(0x76))   {
    Serial.println("Could not find a valid BME280 sensor,check wiring");
    while (1);
  }



  pinMode(alarmPin, INPUT_PULLUP); // Set alarm pin as pullup

  if (! rtc.begin()) {
    Serial.println("Couldn't find RTC");
    Serial.flush();
    abort();
  }

    rtc.adjust(DateTime(F(__DATE__) , F(__TIME__)));

  // If required set time
  //rtc.adjust(DateTime(F(__DATE__), F(__TIME__))); // To compiled time
  //rtc.adjust(DateTime(2020, 7, 3, 20, 0, 0)); // Or explicitly, e.g. July 3, 2020 at 8pm

  // Disable and clear both alarms
  rtc.disableAlarm(1);
  rtc.disableAlarm(2);
  rtc.clearAlarm(1);
  rtc.clearAlarm(2);

  rtc.writeSqwPinMode(DS3231_OFF); // Place SQW pin into alarm interrupt mode

  Serial.print("Initializing SD card...");

  // see if the card is present and can be initialized:
  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    // don't do anything more:
    while (1);
  }
  Serial.println("card initialized.");
  delay(1000);
  Serial.println("Starting");
}

void loop () {

  if (bme.readHumidity() > rain)  {
    
    if (digitalRead(3) > 0) {



      //
      File myFile = SD.open("fs3.csv", FILE_WRITE);
      if (myFile)  {    //Keeps Arduino awake and logs drop count data
        DateTime now = rtc.now();
        Serial.println();
        Serial.print(now.hour(), DEC);
        Serial.print(":");
        Serial.print(now.minute() , DEC);
        Serial.print(":");
        Serial.print(now.second(), DEC);
        Serial.print("\t");
        Serial.print(bme.readHumidity());
        Serial.print("\t");
        Serial.print("%");
        Serial.print("\t");
        Serial.print(digitalRead(3));
        Serial.print("\t");
        Serial.print(dropcount);

        
       myFile.print(now.month(), DEC);
       myFile.print(",");
        myFile.print(now.day(), DEC);
        myFile.print(",");
        myFile.print(now.hour(), DEC);
       myFile.print(",");
        myFile.print(now.minute(), DEC);
        myFile.print(",");
        myFile.print(now.second(), DEC);
        myFile.print(",");
        myFile.print(bme.readHumidity());
        myFile.print(",");
        myFile.print("%");
        myFile.print(",");
        myFile.print(dropcount);
        myFile.println();
        myFile.close();
        delay(1000);
        dropcount = dropcount + 1;


      }

      else  {
        Serial.println("SD is FUBAR");
        delay(1000);
      }

    }
    else {
      Serial.println("Ain't no rain in this bitch");
      delay(1000);
    }





  }

  else {                                                      //This will make the Arduino sleep if humidity is too low
    delay(2000);  // Wait 10 seconds before going to sleep

    // Get current time and set alarm to a time to wake
    DateTime now = rtc.now();  // Get current time
    rtc.setAlarm1(now + TimeSpan(0, 0, 0, 05), DS3231_A1_Second); // In 10 seconds
    //rtc.setAlarm1(DateTime(2020, 6, 25, 15, 0, 0), DS3231_A1_Hour); // Or can be set explicity

    enterSleep();  // Go to sleep
  }
}

void enterSleep() {
  sleep_enable();                       // Enabling sleep mode
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);  // Setting the sleep mode, in this case full sleep

  noInterrupts();                       // Disable interrupts
  attachInterrupt(digitalPinToInterrupt(alarmPin), alarm_ISR, LOW);

  Serial.println("Going to sleep!");    // Print message to serial monitor
  Serial.flush();                       // Ensure all characters are sent to the serial monitor

  interrupts();                         // Allow interrupts again
  sleep_cpu();                          // Enter sleep mode

  /* The program will continue from here when it wakes */

  // Disable and clear alarm
  rtc.disableAlarm(1);
  rtc.clearAlarm(1);

  Serial.println("No rain");          // Print message to show we're back
}


void alarm_ISR() {
  // This runs when SQW pin is low. It will wake up the µController

  sleep_disable(); // Disable sleep mode
  detachInterrupt(digitalPinToInterrupt(alarmPin)); // Detach the interrupt to stop it firing
}
