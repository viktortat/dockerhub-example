#!/bin/bash

# docker login -u tavis1 dckr_pat_0vjOtCPrYMXsLwnRFOIXp29UxPM
# echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin

# DOCKERHUB_CREDENTIALS_PSW=****
# DOCKERHUB_CREDENTIALS_PSW_PSW=****
# DOCKERHUB_CREDENTIALS_PSW_USR=viktor

env | sort

echo $DOCKERHUB_CREDENTIALS_PSW_PSW | docker login -u $DOCKERHUB_CREDENTIALS_PSW_USR --password-stdin
