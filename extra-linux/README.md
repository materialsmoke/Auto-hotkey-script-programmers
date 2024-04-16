### Applications we need to install:
```
sudo apt update && sudo apt upgrade
sudo apt install vim && sudo apt install curl && sudo apt install git
```
```
ssh-keygen

// the permission should be 600 for id_rsa and 644 for the rest of the files
```

Chrome (Using the Official Google Chrome Repository):
```
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' 

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 

sudo apt update 

sudo apt install google-chrome-stable 
```
Vscode:
```
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
```
Tilix (terminal):
```
sudo apt-get install tilix
```
php:
```
sudo apt-get install -y php php-cli php-common php-fpm php-mysql php-zip php-gd php-mbstring php-curl php-xml php-bcmath openssl php-json php-tokenizer
```


From Ubuntu Software install:

- tweaks
- beekeeper Studio
- dbeaver-ce
- autokey
- telegram
- caffeine


### Linux 4k monitor problem:

Every time linux goes to blank screen or sleep, it's kind of impossible to bring it back and the resolution will change. `Ctrl + p` maybe can solve the problem sometimes but sometimes that doesn't work...

There is another way instead of turning the monitor off, we can decrease the brightness to minimum and if we start a program called `caffeine` it will prevent the brightness decrease.

Copy brightnesscontrol folder and paste it in /home/alex or what ever username is, then install it.

After install restart the 

### Shortcuts

In the setting->keyboard->Keyboard Shortcuts

super i => maximize the window
super k => restore the size of the window

super r => go to next workspace
super e => go to previous workspace
super w => move window to next workspace
super q => move window to previous workspace
