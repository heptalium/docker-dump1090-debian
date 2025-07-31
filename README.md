# docker-dump1090-debian

Used to build Docker image `ghcr.io/heptalium/dump1090:debian`

## Prerequisites

- RTLSDR device is connected via USB

## Usage

```
docker container run -d --device /dev/bus/usb/001/004:/dev/bus/usb/001/004 --name dump1090 --restart always ghcr.io/heptalium/dump1090:debian
```

### Docker Compose

```yaml
services:
  dump1090:
    image: ghcr.io/heptalium/dump1090:debian
    devices:
      - /dev/bus/usb/001/004:/dev/bus/usb/001/004
    restart: always
```
