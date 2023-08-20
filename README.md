# Auto-hotkey-script-programmers

### Autohotkey script for windows programmers
Download Autohotkey from here https://www.autohotkey.com/

Download arrows.ahk from this repository and put it in your startup

Caps lock + l => arrow right
<br>
Caps lock + j => arrow left
<br>
Caps lock + i => arrow up
<br>
Caps lock + k => arrow down
<br>
Caps lock + o => end
<br>
Caps lock + u => home
<br>
Caps lock + h => Backspace
<br>
Caps lock + n => Esc
<br>
Shift + Caps lock => turn on Caps lock
<br>
Caps lock => turn off Caps lock
<br>
<br>
<br>
### For Linux programmers:
##### ubuntu:
disable capslock with `ubuntu tweak`

download the autokey-ubuntu.zip and extract it in:

/home/{your_username}/.config/

put autokey in the startup inside the autokey settings

##### kubuntu:
change capslock to hyper with xmodmap:
<br>
xmodmap -e "keysym Caps_Lock = Hyper_L"
<br>
or other solutions
<br>
delete logout shortcut with Super+l in the keyboard shortcut settings
<br>
for example for kde: https://stackoverflow.com/questions/211043/disable-global-ctrl-alt-l-hotkey-in-kde/211059#211059
<br><br>
install autokey:
<br>
extract autokey.zip in: 
<br>
/home/{your_username}/.config/autokey
<br>
add autokey to startup from:
autokey Menu->Edit->preferences->Automatically start autokey at login 

make a file: mystartup.sh in /home/mystartup.sh<br>
```
#!/bin/bash
/usr/bin/xmodmap -e "keysym Caps_Lock = Hyper_L"
```
save it and in the windows menu type: <br>
`autostart`<br>
click on the `add` > `add login script` and add mystartup.sh<br>
<br><br><br>
### Mac programmers:
https://github.com/madslundt/keybindings

Or

for mac put this file in .config/karabiner/karabiner.json

if you want to change Command with Ctrl, copy and paste this code:

https://github.com/samraskul/Auto-hotkey-script-programmers/issues/2





