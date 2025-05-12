SHELL := /usr/bin/env bash

BUILD_DIR := $(shell . ./env.sh && echo $$APP_DIR)/build
SETUP     := . ./env.sh

.PHONY: all build flash log clean

build:
	@$(SETUP) && cd $$WORKSPACE && \
	west build -b $$BOARD -s $$APP_DIR -d $$APP_DIR/build

flash:
	@$(SETUP) && cd $$WORKSPACE && \
	west flash -d $$APP_DIR/build

log:
	@picocom -b 115200 /dev/ttyACM0

clean:
	@rm -rf $(BUILD_DIR)
