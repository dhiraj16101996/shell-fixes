#!/bin/bash
echo "This fix requires active internet connection:- \n"
echo "Press y and then enter whenever asked for"
sleep 5
sudo apt-get --purge remove apache2
sleep 2
sudo apt-get autoremove
sleep 2
sudo apt-get install apache2
sleep 2
sudo /etc/init.d/apache2 restart
sleep 1
sudo service apache2 stop
echo "Apache2 service has been fixed now"
echo "You can type [ service apache2 start ] in terminal to start the apache service"
