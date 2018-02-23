#!/bin/bash
latestpix=$(ls /home/pi/projects/motion/ -trp | grep -v / | tail -1)
path=/home/pi/projects/motion/
timestamp=`date "+%Y%m%d-%H:%M:%S"`

#send pix
echo "Attached the latest image from Webcam!" | mail -A $path$latestpix -s "Webcam Image "$timestamp ccsraspberrypi@gmail.com
