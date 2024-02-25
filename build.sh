#!/bin/bash

docker build docker -t marlin_firmware_builder
docker run -v "$PWD:/app" --name marlin_firmware_builder --rm -it -v .:/code marlin_firmware_builder /bin/bash -c "platformio run -e STM32G0B1RE_btt"
