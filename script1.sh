#!/bin/bash
# Установка WordPress Debian
# Скрипт 1 подготовка среды для установки WordPress
# Выполняем этот скрипт от Root-пользователя
su
sudo apt update
apt -f -y install apache2 apache2-utils
apt -f -y install mariadb-client mariadb-server
# Скрипт для создания базы данных в mariaDB
./script3.sh
apt -f -y install php7.4 php7.4-mysql libapache2-mod-php7.4 php7.4-cli php7.4-cgi php7.4-gd
# Скрипт для скачивания WP с сайта и создание папки в директории var/www/
./script2.sh
# Скрипт для Создания файла сборки для Apache2 и даем ссылку на папку с включенным
./script4.sh
# Далее выполняем если необходимо зайти локально с виртуалки 
# source config.sh
# sudo echo 127.0.0.1 $adressite >> /etc/hosts
# sudo echo 127.0.0.1 www.$adressite >> /etc/hosts
echo Всё Сделано босс! Далее нужно настроить сайт $adressite в браузере.
