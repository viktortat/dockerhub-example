#!/bin/bash
docker pull alpine:3.13.5
docker build -t tavis1/dp-alpine:latest .
