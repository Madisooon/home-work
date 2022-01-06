#!/bin/bash
    # Создание папки сайта в дирректории /var/www/
    # Скачивание в папку сайта WordPress
    # Указываем ip адреса для доменных имен в файле /etc/hosts
    # Создаем файл конфигурации для Apache2 и даем link в папку enabled
    # Не забываем давать права скрипту (chmod +x ./ИМЯ_ФАЙЛА)
    source config.sh
    sudo mkdir /var/www/$dirsite
    sudo apt-get install zip
    sudo wget -P /var/www/ https://wordpress.org/latest.zip
    sudo unzip /var/www/latest.zip -d/var/www/$dirsite
    sudo cp -r /var/www/$dirsite/wordpress/ /var/www/
    sudo rm -r /var/www/$dirsite/wordpress/
    sudo cp -r /var/www/wordpress/* /var/www/$dirsite
    sudo rm -r /var/www/wordpress
    sudo rm -r /var/www/latest.zip
    sudo chown -R www-data:www-data /var/www/$dirsite
    sudo chmod -R 755 /var/www/$dirsite
    sudo rm -r /var/www/html/index.html
