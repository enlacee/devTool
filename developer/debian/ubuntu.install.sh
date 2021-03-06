#-----------------------------------
#:::::: Install basic
#-----------------------------------
sudo apt-get install ubuntu-restricted-extras
sudo apt-get install flashplugin-installer
sudo apt-get install preload ## mejora el rendimeinto
# in terminal
sudo apt-get install nautilus-open-terminal
nautilus -q
#-----------------------------------
#:::::: desintalar programa
#-----------------------------------
sudo apt-get remove google-chrome-stable
sudo apt-get purge google-chrome-stable
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove
#list of repositories intall
/etc/apt/source.list
#-----------------------------------
#:::::: remover repositorio en ubuntu
#-----------------------------------
ir a Software o Software o software and update
#-----------------------------------
#:::::: Install tool
#-----------------------------------
# YOUTUBE
#install ppa
sudo apt-add-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get upgrade
dpkg -l|grep youtube-dl
#install
sudo apt-get install youtube-dl
sudo apt-get install python-setuptools
sudo easy_install pip
sudo pip install --upgrade youtube-dl ## actualizar youtube-dl OK
#-----------------------------------
#:::::: Tool SO tool
#-----------------------------------
# VERSION DE UBUNTU
lsb_release -a
uname -a
# ARQUITECTURA SO
uname -m
#-----------------------------------
#:::::: imagemagick
#-----------------------------------
# URL
# BASIC
@http://www.imagemagick.org/Usage/thumbnails/
convert example.png -resize 500×500 example.png
# BASIC DEFORMA IMAGEN TAMANIO EXACTO
convert example.png -resize 500×500! example.png
# QUALITY
convert sansung.png -resize 500x500 -quality 70 out.quality.70.jpg
# THUMBNAIL
convert sansung.png -thumbnail 500x500 -background  black -gravity center -extent 500x500 end.jpg
# THUMBNAIL PERFECT! (FIT)
convert -define jpeg:size=337x290 sansung.png  -thumbnail 500x500^ -gravity center -extent 500x500  cut_to_fit.gif
# scrot
scrot -s -t 65 -q 100
#-----------------------------------
#:::::: APPS INSTALL
#-----------------------------------
wget and aria => manager dowloader

#-----------------------------------
#:::::: install tar
#-----------------------------------
./configure
make
sudo make install
#-----------------------------------
#:::::: Add repositorio ubuntu
#-----------------------------------
# source repositorie
/etc/apt/sources.list
# add repositories by synaptic
setting
# add repositories and key by terminal
sudo add-apt-repository "http://ppa.launchpad.net/mc3man/gstffmpeg-keep/ubuntu trusty main"
sudo add-apt-repository ppa:gwibber-daily/ppa

#reproducir musica por terminal
mplayer
# grabar voz SOX
# 1. install sox
rec -b 32 -r 192000 myvoice.wv
# 2. sox better
sox -t alsa default test.wav
mplayer test.wav

# instalar TAR
 - descomprimier # tar xvf archivo.tar
 - ./configure
 - make
 - sudo make install
# cofigurar bluetooh tool
sudo apt-get install bluez-utils
hcitool dev # ver dispositivos (see devices)

#-----------------------------------
#:::::: buscar en ubuntu
#-----------------------------------
dpkg -L php-pear
# copiar bin local
/usr/bin
/usr/local/bin # recommended
#-----------------------------------
#:::::: install mkvextract
#-----------------------------------
sudo apt-get install mkvtoolnix
# extraer track srt (buscar)
# mkvextract tracks friends.s05e01.720p.bluray.x264-mrs.sujaidr.mkv 2:srt2.srt
mkvextract tracks <your_mkv_video> <track_numer>:<subtitle_file.srt>
# error ubuntu cuando bloquea
sudo rm /var/cache/debconf/*.dat
#-----------------------------------
#:::::: INSTALAR SERVIDOR APACHE Y MYSQL
#-----------------------------------
sudo apt-get install tasksel
sudo tasksel install lamp-server
# rewrite apache
sudo a2enmod rewrite && sudo service apache2 restart
# in : /etc/apache2/sites-available (habilitar sobreescritura)
# <Directory /var/www/>
# before :
AllowOverride None
# after :
AllowOverride all

## install poedit
sudo apt-get install poedit
## traduccion : instalar diccionario español - ingles : ingles español
sudo apt-get install dict-freedict-eng-spa
sudo apt-get install dict-freedict-spa-eng
# deficiente con muchas palabras
dict -d fd-spa-eng "odiar"
# traduccion : google translate por terminal
git clone https://github.com/soimort/translate-shell
cd translate-shell/
make
sudo make install
make TARGET=zsh
sudo make PREFIX=/usr install
# translate terminal
trans "hello"
trans :es -input /home/anb/hola.txt
#-----------------------------------
#:::::: sincronizar archivos por bittorrent
#-----------------------------------
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:tuxpoldo/btsync
sudo apt-get update
sudo apt-get install btsync
#-----------------------------------
#:::::: install keyboard o teclado vitual
#-----------------------------------
sudo apt-get install onboard
#-----------------------------------
#:::::: cambiar nombre pc
#-----------------------------------
hostname NEW_NAME_HERE
#-----------------------------------
#:::::: reconocer android
#-----------------------------------
sudo apt-get install mtpfs
#-----------------------------------
#:::::: install USB LIVE *anywhere*
#-----------------------------------
sudo dd if=archivo.iso of=/dev/sdX
sudo blkid

#install terminal como background
sudo apt-get install tilda
#activar utf8 en ubuntu
locale -a
sudo locale-gen en_US.UTF-8
export LANG=en_US.UTF-8
#-----------------------------------
#:::::: config thunderbird open browser default
#-----------------------------------
Click Edit > then click Preferences >
select opcion *Advanced*
at the bottom of that tab Open the *Config Editor*
to set to [true], search:
network.protocol-handler.warn-external.http
network.protocol-handler.warn-external.https


## error apt-get update UBUNTU

sudo rm -r /var/lib/apt/lists/*
sudo apt-get clean && sudo apt-get update

# Repeat action

sudo rm -rf /var/lib/apt/lists/*
sudo apt update
