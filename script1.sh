#!/bin/bash
# Установка WordPress Debian11
# Скрипт 1 подготовка среды для установки WordPress
# Не забываем давать права скрипту (chmod +x ./ИМЯ_ФАЙЛА)
sudo apt update
sudo apt -f -y install apache2 apache2-utils
sudo apt -f -y install mariadb-client mariadb-server
sudo ./script3.sh
sudo apt -f -y install php7.4 php7.4-mysql libapache2-mod-php7.4 php7.4-cli php7.4-cgi php7.4-gd
sudo ./script2.sh
sudo ./script4.sh
source config.sh
sudo echo 127.0.0.1 $adressite >> sudo /etc/hosts
sudo echo 127.0.0.1 www.$adressite >> sudo /etc/hosts
echo Всё Сделано босс! Далее нужно настроить сайт $adressite в браузере.
