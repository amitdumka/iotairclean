#!/bin/bash

echo "IoT AirClean Update started!";

# Update Current Python Scripts to get Data
rm iotairclean_subscriber.py
wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/backend/iotairclean_subscriber.py
chmod +x iotairclean_subscriber.py

echo "IoT AirClean Background Tasks updated!";

# Update Current ui
cd /usr/share/nginx/html
sudo rm iotairclean_station.php
sudo rm iotairclean_visualization.php
sudo rm iotairclean_logo.png
# basic files
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/iotairclean_station.php
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/iotairclean_visualization.php
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/iotairclean_logo.png
# js, css and fonts
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/css/bootstrap.css
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/css/bootstrap.css.map
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/css/bootstrap.min.css
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/css/bootstrap.min.css.map
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/css/bootstrap-theme.css
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/css/bootstrap-theme.css.map
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/css/bootstrap-theme.min.css
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/css/bootstrap-theme.min.css.map
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/fonts/glyphicons-halflings-regular.eot
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/fonts/glyphicons-halflings-regular.svg
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/fonts/glyphicons-halflings-regular.ttf
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/fonts/glyphicons-halflings-regular.woff
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/fonts/glyphicons-halflings-regular.woff2
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/js/bootstrap.js
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/js/bootstrap.min.js
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/js/Chart.min.js
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/js/jquery-3.2.1.min.js
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/js/moment.min.js
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/js/mqttws31.min.js
sudo wget https://raw.githubusercontent.com/michaelulm/iotairclean/master/src/server/ui/js/npm.js


echo "IoT AirClean UI updated!"

# everything should be finished
echo "IoT AirClean Update finished!";
