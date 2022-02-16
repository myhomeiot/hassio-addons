# myhomeiot Home Assistant Add-on: rtl_433

Decode radio transmissions from devices via an SDR dongle and rtl_433

## About

This add-on is a simple wrapper around the excellent [rtl_433](https://github.com/merbanan/rtl_433)
project that receives wireless sensor data via [one of the supported SDR dongles](https://triq.org/rtl_433/HARDWARE.html),
decodes and outputs it in a variety of formats including JSON and MQTT.
The wireless sensors rtl_433 understands transmit data mostly on 433.92 MHz, 868 MHz, 315 MHz, 345 MHz,
and 915 MHz ISM bands.

## Credit

This add-on is based on @pbkhrv [rtl_433 Home Assistant Add-on](https://github.com/pbkhrv/rtl_433-hass-addons/tree/main/rtl_433),
which is in turn based on James Fry's [rtl4332mqtt Hass.IO Add-on](https://github.com/james-fry/hassio-addons/tree/master/rtl4332mqtt),
which is in turn based on Chris Kacerguis' project [here](https://github.com/chriskacerguis/honeywell2mqtt),
which is in turn based on Marco Verleun's rtl2mqtt image [here](https://github.com/roflmao/rtl2mqtt).
