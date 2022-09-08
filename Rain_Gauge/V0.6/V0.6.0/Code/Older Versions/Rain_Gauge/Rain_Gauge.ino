#include <SPI.h>
#include <SD.h>
#include <EEPROM.h>
#include <GravityTDS.h>
#include <avr/sleep.h>
#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h>
#define TdsSensorPin A1


#define SEALEVELPRESSURE_HPA (1013.25)

Adafruit_BME280 bme;                 //use this to call "bme" sensor functions later in code



int wakePin = 2;                    //Put a resistor between these pins for sleep
int sleepStatus = 0;

const int rain = 90;                //this is the humidity threshold we'll use to wake/sleep the Arduino 



GravityTDS gravityTds;
const int chipSelect = 4;               //Saving SD data through digital pin 4
float temperature = 25, tdsValue = 0;
File myFile;
void save_temperature() {}

 
void wakeUpNow()        // here the interrupt is handled after wakeup
{
  // execute code here after wake-up before returning to the loop() function
  // timers and code using timers (serial.print and more...) will not work here.
  // we don't really need to execute any special functions here, since we
  // just want the thing to wake up
}
 void sleepNow()         // here we put the arduino to sleep
{
    /* Now is the time to set the sleep mode. In the Atmega8 datasheet
     * https://www.atmel.com/dyn/resources/prod_documents/doc2486.pdf on page 35
     * there is a list of sleep modes which explains which clocks and
     * wake up sources are available in which sleep mode.
     *
     * In the avr/sleep.h file, the call names of these sleep modes are to be found:
     *
     * The 5 different modes are:
     *     SLEEP_MODE_IDLE         -the least power savings
     *     SLEEP_MODE_ADC
     *     SLEEP_MODE_PWR_SAVE
     *     SLEEP_MODE_STANDBY
     *     SLEEP_MODE_PWR_DOWN     -the most power savings
     *
     * For now, we want as much power savings as possible, so we
     * choose the according
     * sleep mode: SLEEP_MODE_PWR_DOWN
     *
     */  
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);   // sleep mode is set here
 
    sleep_enable();          // enables the sleep bit in the mcucr register
                             // so sleep is possible. just a safety pin
 
    
 
    attachInterrupt(0,wakeUpNow, LOW); // use interrupt 0 (pin 2) and run function
                                       // wakeUpNow when pin 2 gets LOW
 
    sleep_mode();            // here the device is actually put to sleep!!
                             // THE PROGRAM CONTINUES FROM HERE AFTER WAKING UP
 
    sleep_disable();         // first thing after waking from sleep:
                             // disable sleep...
    detachInterrupt(0);      // disables interrupt 0 on pin 2 so the
                             // wakeUpNow code will not be executed
                             // during normal running time.
 
}
void setup()
{
  pinMode(wakePin, INPUT);
 
  Serial.begin(115200);

  if (!bme.begin(0x76)) {
    Serial.println("Could not find a valid BME280 sensor, check wiring!");
    while (1);
 
  
 
  attachInterrupt(0, wakeUpNow, LOW); // use interrupt 0 (pin 2) and run function
                                      // wakeUpNow when pin 2 gets LOW
}
 while (!Serial);

  Serial.print("Initializing SD card...");

  if (!SD.begin(chipSelect)) {
    Serial.println("initialization failed. Things to check:");
    while (true);
  }

  Serial.println("initialization done.");
}
 
void loop()

{

  if(bme.readHumidity() > rain)               //this is the statement that controls whether or not Arduino needs to be awake

  {
     gravityTds.setTemperature(temperature);  // set the temperature and execute temperature compensation
  gravityTds.update();  //sample and calculate
  tdsValue = gravityTds.getTdsValue();  // then get the value
  Serial.println(tdsValue, 0);                      //this writes the TDS values to serial monitor
  Serial.print("ppm");


  delay(2000);                                          //slow down the function to make life easier for Arduino
  
  
  File dataFile = SD.open("rainyday.csv", FILE_WRITE);                           //Use title.csv for Excel sheet data format
  if (dataFile) {                                                             //Use title.txt for notepad format
    dataFile.println(tdsValue, 0);
    dataFile.print("ppm");
    
    
    dataFile.close();
  }
  else {                                          
    Serial.println("error opening datalog.txt");
  }
}
  
    
else  {                                                     //This is for when the humidity level is lower than the threshold-Arduino is asleep here
  
  Serial.println("Naptime...");                             //Random word to show in serial that Arduino is asleep
  delay(1500);
  sleepNow();

}
  
  
}
