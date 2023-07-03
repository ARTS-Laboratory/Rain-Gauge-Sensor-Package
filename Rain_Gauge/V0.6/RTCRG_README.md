## Update v0.6.2- June 2,2023
Current version is capable of turning on or off based on environmental humidity readings and an RTC interrupt. The RTC also logs the time it detects rainfall.

# Purpose of this project is to create an electronic rain gauge that can be deployed long term. It measures rainfall by counting individual rain drops as they make contact with two electrodes. The overall design is that of a funnel that guides rain through the electrodes so they can be counted individually, and saves this data, along with the time and humidity, to a microSD card.

BOM: Arduino Nano, BME280, 3.3v microSD card adapter, RTC module, 10uF capacitor, 3M ohm resistor, 5V and 3.3V linear regulators, 7.4V lipo battery