sudo apt update

sudo apt install ddcutil
sudo apt install xprintidle
sudo apt install caffeine
sudo apt install supervisor

sudo mv ./tmp/mystartup.conf /etc/supervisor/conf.d/mystartup.conf
sudo mv ./tmp/mystartupsudo.conf /etc/supervisor/conf.d/mystartupsudo.conf

sudo mv ./tmp/brightness ./assets/brightness
sudo mv ./tmp/myblankscreen.sh ./assets/myblankscreen.sh
sudo mv ./tmp/myblankscreensudo.sh ./assets/myblankscreensudo.sh
sudo mv ./tmp/mybrightnesscontroller.py ./assets/mybrightnesscontroller.py

sudo mv ./tmp/brightnesscontroller.desktop /usr/share/applications/brightnesscontroller.desktop

rm -rf ./tmp

