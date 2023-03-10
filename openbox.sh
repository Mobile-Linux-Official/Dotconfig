sudo apt update -y
sudo apt install openbox nitrogen dbus-x11 tigervnc-standalone-server -y

mkdir -p ~/.vnc
echo "#!/bin/bash
[ -r ~/.Xresources ] && xrdb ~/.Xresources
export PULSE_SERVER=127.0.0.1
export DISPLAY=:1
XAUTHORITY=~/.Xauthority
export XAUTHORITY                   
openbox-session" > ~/.vnc/xstartup                                           
chmod +x ~/.vnc/xstartup
wget https://raw.githubusercontent.com/Mobile-Linux-Official/Dotconfig/main/vncserver-start -O /usr/local/bin/vncserver-start                       
wget https://raw.githubusercontent.com/Mobile-Linux-Official/Dotconfig/main/vncserver-stop -O /usr/local/bin/vncserver-stop
chmod +x /usr/local/bin/vncserver-start
chmod +x /usr/local/bin/vncserver-stop
