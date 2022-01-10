#!/bin/bash
    # Создаем файл конфигурации для Apache2 и даем link в папку enabled
    source config.sh
    touch /etc/apache2/sites-available/$nameconf
    echo '<VirtualHost *:80>' >> $path/$nameconf
    echo        'ServerName '$adressite'' >> $path/$nameconf
    echo        'ServerAdmin tutmoimail@gmail.com' >> $path/$nameconf
    echo        'DocumentRoot /var/www/'$dirsite >> $path/$nameconf
    echo        'ErrorLog ${APACHE_LOG_DIR}/'$adressite'-error.log' >> $path/$nameconf
    echo '</VirtualHost>' >> $path/$nameconf
    cp -r $path/$nameconf $path/$nameconf.conf
    rm -r $path/$nameconf
    sudo a2ensite $nameconf.conf
    sudo service apache2 restart
