# Raspberry Pi homeserver

This repository contains the scripts and configuration files that I use to turn my Raspberry pi 4 into a home/media-server.

## Requirements

The following hardware is **required** to use these scripts:
- Raspberry pi 4
- microSD card

## Installation

**Warning DO NOT run the `install.sh` script if you do not fully understand what it does. Seriously, DON'T!**

```bash
$ git clone https://gitlab.com/TuX-sudo/rpi-homeserver
$ cd rpi-homeserver/
$ ./install.sh
```

## Programs

| Name  | Usage |
| ------------- | ------------- |
| [Grafana](https://github.com/grafana/grafana) | Data visualization platform |
| [Prometheus](https://github.com/prometheus/prometheus) | Data scource for Grafana |
| [Node-exporter](https://github.com/prometheus/node_exporter) | Exporter for system metrics |
| [Vim](https://github.com/vim/vim) | Text editor |
| [Pihole](https://github.com/pi-hole/pi-hole) | DNS level ad blocking software |
| [Pivpn](https://github.com/pivpn/pivpn) | Vpn for Raspberry Pi |
| [Emby](https://emby.media/) | Your personal media on any device |

## Configurations

The following will be configured after running these scripts:
- Static IP
- Firewall
- Transmission-daemon settings

## Feedback

These scripts aren't perfect therefore suggestions/improvements are always [welcome](https://github.com/TuX-sudo/rpi-homeserver/issues)!

## License

The files and scripts in this repository are licensed under the MIT License, which is a very permissive license allowing you to use, modify, copy, distribute, sell, give away, etc. the software. In other words, do what you want with it. The only requirement with the MIT License is that the license and copyright notice must be provided with the software.
