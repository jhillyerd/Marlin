#!/bin/sh

PLATFORM=STM32F103RC_btt_512K

echo "## Cleaning"
platformio run --target clean -e $PLATFORM

echo "## Building"
platformio run -e $PLATFORM

echo "## Done"
mv .pio/build/$PLATFORM/firmware.bin .
ls -l firmware.bin
