#!/bin/bash

MODEL_SIZE=small
MODEL_LANG=en-us
MODEL_VER=0.15

MODEL_URL=https://alphacephei.com/vosk/models/vosk-model-${MODEL_SIZE}-${MODEL_LANG}-${MODEL_VER}.zip

wget -L -O vosk-model.zip "$MODEL_URL" && unzip -d vosk vosk-model.zip || echo 1>&2 "ERROR: couldn't download $MODEL_URL"


