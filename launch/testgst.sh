#!/usr/bin/env bash





#    <param name="gscam_config" value="v4l2src device=$(arg DEVICE) ! video/x-raw-yuv,framerate=$(arg FPS),width=$(arg width),height=$(arg height) ! ffmpegcolorspace"/>

# fps 30
# color range full
# auto exposure auto

gst-launch-1.0 v4l2src device=/dev/video1 ! video/x-raw-yuv, framerate=30, width=3840,height=1080 ! xvimagesink
