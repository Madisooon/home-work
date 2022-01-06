#!/bin/bash
    # Создание базы данных в Maria
    # Не забываем давать права скрипту (chmod +x ./ИМЯ_ФАЙЛА)
    source ./config.sh
    echo "CREATE DATABASE $dbname;" | sudo mariadb -u root -p$rootpass
    echo "CREATE USER '$dbuser'@'localhost' IDENTIFIED BY '$userpass';" | sudo mariadb -u root -p$rootpass
    echo "GRANT ALL PRIVILEGES ON $dbname.* TO '$dbuser'@'localhost';" | sudo mariadb -u root -p$rootpass
    echo "FLUSH PRIVILEGES;" | sudo mariadb -u root -p$rootpass
    echo "Новая база данных успешно создана"	
