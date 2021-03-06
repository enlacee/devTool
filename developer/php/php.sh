
-----------------------------------
:::::: install php plugin
-----------------------------------
sudo apt-get install php5-json
sudo apt-get install php5-sqlite
sudo apt-get install php5-mysql
sudo apt-get install php-apc = (almacena en cache)
sudo apt-get install php5-mcrypt
sudo apt-get install php5-curl
sudo apt-get install php-soap
sudo apt-get install php5.6-xml
sudo apt-get install curl libcurl3 libcurl3-dev php5-curl
sudo apt-get install php5-dom
sudo apt-get install php5-gd


sudo ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/apache2/conf.d/ # for Apache
## or : sudo ln -s /etc/php5/mods-available/mcrypt.ini mcrypt.ini
sudo ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/cli/conf.d/ # for CLI
#ver paquetes php instalados
php -m
# LDPA estructura
# xhprof
sudo pecl config-set preferred_state beta
sudo pecl install xhprof
# ver graficos de xhprof
apt-get install graphviz
#+++
sudo apt-get install php5-gd
sudo apt-get install php5-gd
# format standar xslt
sudo apt-get install php5-xsl
# instalar para fechas en zf2
sudo apt-get install php5-intl
# install for image
sudo apt-get install php5-imagick

# PHP 7 y PHP 5
sudo apt-get install php7.0-sqlite php7.0-mbstring php7.0-gd php7.0-curl php7.0-mysql php7.0-xml

## instalar modo para no mostrar arhivo php como texto
## y no  mostrar invalid command php_value
sudo apt-get install libapache2-mod-php7.0
sudo apt-get install libapache2-mod-php5


intl
-----------------------------------
:::::: See Shell all libraries install
-----------------------------------
php -m
php -a # php por terminal (ok)
-----------------------------------
:::::: php.ini
-----------------------------------
# configuracion  para enviar files pesados PHP OKKK
upload_max_filesize = 1000M ;1GB
post_max_size = 1000M
# show error
display_errors = On


::::::
#PEAR : ubicacion en ubuntu : /usr/share/php/PEAR
apt-get install php-pear #instalamos pear
$ sudo pear channel-update pear.php.net #actualizamos los canales
$ sudo pear list #nos muestra los paquetes instalados
$ pear remote-list #muestra la lista de paquetes disponibles para instalar
#install PHPUnit
sudo pear config-set auto_discover 1
sudo pear install pear.phpunit.de/PHPUnit
#install PHPUnit 2
sudo apt-get update
sudo apt-get install phpunit
sudo apt-get install php5-xdebug
sudo apt-get install php5-curl
sudo pear channel-update pear.php.net
#probar si instalo
phpunit --version
# insatall xdebug
sudo apt-get install php5-dev
sudo pecl install xdebug
#create loader apache
sudo cp json.ini  xdebug.ini # /etc/php5/mods-available
sudo ln -s ../../mods-available/xdebug.ini 20-xdebug.ini #/etc/php5/mods-available
-----------------------------------
:::::: php shell
-----------------------------------
php --version # http://php.net/manual/en/install.pecl.php-config.php
php-config --version # execute only command assisted

# configurar date.timezone on /etc/php/7.0/ (cli and apache)
date.timezone = America/Lima

## debug : tracking : profile
XHProf
@reference [install xhprof](http://techportal.inviqa.com/2009/12/01/profiling-with-xhprof/)

##
echo mb_strtoupper("aáeéiíoóuúnñ", "utf-8");

## imprimir real path
var_dump(realpath(__DIR__ ."/../../.."));

-----------------------------------
:::::: install multiple php version
-----------------------------------
::: step 01
sudo apt-get install bison flex libmysqlclient-dev libzzip-dev libcurl4-gnutls-dev libmcrypt-dev libmhash-dev libjpeg8-dev libpng12-dev
sudo apt-get install libjpeg62-dev libpng-dev libfreetype6-dev

::: step 02
cd /opt
sudo wget http://es.php.net/distributions/php-4.4.9.tar.gz
sudo tar -xvzf php-4.4.9.tar.gz
cd php-4.4.9
sudo ./configure --prefix=/opt/php4 --with-config-file-path=/opt/php4 --with-mysql --with-libdir=/lib/x86_64-linux-gnu
sudo make
sudo make install

::: step 03
sudo mkdir -p /opt/etc/php4/cgi
sudo cp php.ini-dist /opt/etc/php4/cgi/php.ini
sudo a2enmod actions

::: step 04 : modificar archivo para que no ejecte con php5 actual, quitamos del archivo
/etc/apache2/mods_available/php5.conf

SetHandler application/x-httpd-php

####
# php o PDO dañado
##########
apt-get --purge remove php5*
sudo apt-get install php5 php5-sqlite php5-mysql
sudo apt-get install php-pear php-apc php5-curl
sudo apt-get autoremove

## uninstall php
sudo apt-get purge php.*

##############################
### instalar multiple php
##############################
https://lornajane.net/posts/2016/php-7-0-and-5-6-on-ubuntu

sudo a2dismod php5.6
sudo a2enmod php7.0
sudo service apache2 restart

### print timezone
echo date_default_timezone_get();


## cambiar php version
optional
	sudo apt-get install python-software-properties
	sudo add-apt-repository ppa:ondrej/php

	sudo update-alternatives --set php /usr/bin/php7.1
	sudo update-alternatives --set php /usr/bin/php7.2

	a2enmod php7.2
	systemctl restart apache2

## Install PHP from source

	https://www.php.net/downloads.php


	./configure


## ver configuracion de php

php -i > phpsetting.txt
