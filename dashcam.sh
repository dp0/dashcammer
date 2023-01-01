#!/bin/bash

mkdir -p /home/dashcam/videos/all

raspivid -w 1920 -h 1080 -fps 25 -b 15000000 --segment 60000 -t 0 \
    -o '/home/dashcam/videos/all/%FT%T%z.h264'
