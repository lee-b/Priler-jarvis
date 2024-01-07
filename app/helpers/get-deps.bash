#!/bin/bash

wget -L -O vosk.zip 'https://github.com/alphacep/vosk-api/releases/download/v0.3.45/vosk-win64-0.3.45.zip' && unzip vosk.zip libvosk.lib || echo 1>&2 "ERROR: couldn't download vosk-win64"

unzip -j vosk.zip vosk-win64-0.3.45/libvosk.{lib,dll}

