-----------------------------------
:::::: Desktop
-----------------------------------
# create Icon LDX file : sublime2.desktop
[Desktop Entry]
Name=Sublime Text 2
Comment=Editor Text
Exec=sublime
Icon=/opt/Sublime Text 2/Icon/256x256/sublime_text.png
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Application;Development;
# ABRIR BY DEFAULT SUBLIME
/usr/share/applications/sublime_text.desktop exists.
# OPEN
/usr/share/applications/defaults.list with Sublime:
# CREATE SUBLIME2.DESKTOP IN 
/usr/share/applications/sublime2.desktop
# SUBLIME INSTALL PLUGIN
- emmet
- git 
- Trimmer
- MarkDown Editing

-----------------------------------
:::::: LXDE
-----------------------------------
# CONFIGURAR PCMANFM
.config/pcmanfm/lubuntu
# REINICIAR LXDE
lxpanelctl restart
-----------------------------------
:::::: LXDE SOUND
-----------------------------------
sudo apt-get install xfce4-mixer gstreamer0.10-alsa
alsamixer
#record voice
sudo  apt-get install  sox
sox -t alsa default test.wav
mplayer test.wav
sudo alsa force-reload
