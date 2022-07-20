#!/usr/bin/env bash





#    <param name="gscam_config" value="v4l2src device=$(arg DEVICE) ! video/x-raw-yuv,framerate=$(arg FPS),width=$(arg width),height=$(arg height) ! ffmpegcolorspace"/>

# fps 30
# color range full
# auto exposure auto

#gst-launch-1.0 v4l2src device=/dev/video0 ! video/x-raw ,framerate=30, width=3840,height=1080 ! videoconvert ! xvimagesink
#gst-launch-1.0 v4l2src device=/dev/video0 v4l2src extra-controls="c,exposure_auto=0,power_line_frequency=1"  ! video/x-raw ,framerate=30/1, width=3840, height=1080 ! videoconvert ! xvimagesink

gst-launch-1.0 v4l2src device=/dev/video0 extra-controls="c,exposure_auto=0,power_line_frequency=1"  ! video/x-raw ,framerate=30/1, width=3840, height=1080 ! videoconvert ! xvimagesink
