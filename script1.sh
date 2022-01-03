#!/bin/bash
# Установка WordPress Debian11
# Скрипт 1 подготовка среды для установки WordPress
# Не забываем давать права скрипту (chmod +x ./ИМЯ_ФАЙЛА)
sudo apt-get upgrade
sudo apt-get update
sudo apt install apache2 apache2-utils
sudo apt-get install mariadb-client mariadb-server
read -p "Далее нужно произвезти настройку безопасности Базы Данных нажми Enter"
sudo mysql_secure_installation
sudo apt-get install php7.4 php7.4-mysql libapache2-mod-php7.4 php7.4-cli php7.4-cgi php7.4-gd
