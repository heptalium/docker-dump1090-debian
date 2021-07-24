# docker-dump1090-debian

Used to build Docker image `ghcr.io/heptalium/dump1090`

## Prerequisites

- RTLSDR device is connected via USB

## Usage

`docker run -d --device /dev/bus/usb/001/004:/dev/bus/usb/001/004 --name dump1090 --restart always ghcr.io/heptalium/dump1090`
