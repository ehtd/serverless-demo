#!/bin/bash

BIN_DIR=$(pwd)/bin

# source utils - print, load env
. $BIN_DIR/utils.sh

loadEnv

serverless --version

serverless remove --verbose $@