# Zephyr C++ Freestanding Template

Minimal standalone Zephyr application in C++ for `rpi_pico`.

## Usage

```bash
source ~/zephyr-venv/bin/activate
make build
make flash
make log
````

## Requirements

* Zephyr workspace at `~/zephyrproject`
* SDK installed via `west sdk install`
* Environment configured via `env.sh`

```
