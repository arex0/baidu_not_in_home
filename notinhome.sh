#! /bin/bash
BAIDU=$HOME/.config/baidu
mkdir $BAIDU
mkdir $BAIDU/.config
mv $HOME/.config/baidunetdisk $BAIDU/.config/
mv $HOME/baidunetdisk $BAIDU/
mv $HOME/.nv $BAIDU/
mv $HOME/.config/pulse $BAIDU/.config/pulse
sudo sed -i "4c Exec=env HOME=$BAIDU /opt/baidunetdisk/baidunetdisk %U" /usr/share/applications/baidunetdisk.desktop

message(){
	tput cup 7 $((49-${#1}))
	tput rev #reverse color
	echo $1
	tput sgr0
	tput cup 8 24
	tput civis #cursor invisible
	read -n 1 -rsp "Press any key to continue"
	tput cnorm #cursor visible
}
tput smcup #save then clean screen
message "Set download location manually on Client"
tput rmcup
