# scraping install library linux
sudo apt-get install libxml2-dev libxslt-dev python-dev
pip install lxml
pip install requests

# create server web easy
python -m SimpleHTTPServer 8000

# crear entornos de python
sudo apt-get install virtualenv python-virtualenv
# crear 
virtualenv mi_proyecto
# activar
cd mi_proyecto
source bin/activate
# desactivar 
deactivate
# instalar packeque en virtualenv
pip install django