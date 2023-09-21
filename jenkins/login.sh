#!/bin/bash
# docker login -u tavis1 dckr_pat_0vjOtCPrYMXsLwnRFOIXp29UxPM
# echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin

echo $DOCKERHUB_CREDENTIALS_PSW 

echo 'dckr_pat_0vjOtCPrYMXsLwnRFOIXp29UxPM' | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin
