start () {
	echo -e "\033[1;92m"
echo "please wait....."
cd $HOME/Termux-New-Look
echo
echo -e "\033[91m [+] Updating.........."
apt update
apt upgrade
clear
echo -e "\033[92m [+] Wget installing........."
sleep 0.40
apt install wget
clear
echo -e "\033[93m [+] Removing Zsh........."
sleep 0.40
apt remove zsh
clear
echo -e "\033[94m [+] Installing toilet ........"
sleep 0.40
apt-get install toilet
clear
echo -e "\033[95m [+] Installing figlet ............"
sleep 0.40
apt-get install figlet
clear
echo -e "\033[96m [+] Installing ncurses-utils......."
sleep 0.40
apt-get install ncurses-utils
clear
echo -e "\033[91m [+] Installing termux-api......."
sleep 0.40
apt-get install termux-api
clear
echo -e "\033[92m [+] Installing openssh........"
sleep 0.40
apt-get install openssh
clear
echo -e "\033[93m [+] Installing curl........"
sleep 0.40
apt-get install curl
clear
echo -e "\033[94m [+] Installing python........"
sleep 0.40
apt-get install python
clear
echo -e "\033[95m [+] Installing apksigner........"
sleep 0.40
apt-get install apksigner
clear
echo -e "\033[96m [+] Installing netcat........"
sleep 0.40
apt install netcat
clear
echo -e "\033[91m [√] Successfull all packages installed"
sleep 0.20
rm -f .changelog.sh
echo -e "\033[92m [+] unzip n.zip....."
sllep 0.50
unzip n.zip
echo -e "\033[93m [+] unzip a.zip......"
sleep 0.50
unzip a.zip
echo -e "\033[94m [+] Creating Folder......."
sleep 0.50
mkdir $PREFIX/Virus2
mkdir /sdcard/Virus2
echo -e "\033[95m [+] Copying files........"
sleep 0.30
cp -f com.zip $PREFIX/Virus2
cp -f bat.zip $PREFIX/Virus2
cp -f shell.zip $PREFIX/Virus2
cd $PREFIX/Virus2
echo -e "\033[96m [+] Unzip com.zip......"
unzip com.zip
echo -e "\033[95m [+] Unzip bat.zip......"
unzip bat.zip
echo -e "\033[94m [+] Unzip shell.zip......"
unzip shell.zip
echo -e "\033[93m [√] Successfully all unzip "
sleep 0.20
clear
echo -e "\033[1;92m"
echo " Now setuping Tools....
sleep 1
cd $HOME
rm -f .bashrc > /dev/null 2>&1
echo "Waiting......"
cd $HOME/Tools
cp -f .*.sh
cp -f .*.py $HOME > /dev/null 2>&1
cp -f tool $PREFIX/bin
chmod 777 $PREFIX/bin/tool
chmod 777 $HOME/.*.sh
chmod 777 $HOME/.bashrc
chmod 777 $HOME/.*.py
cp -f .Game.sh $HOME
chmod 777 $HOME/.Game.sh
sleep 3
cd $HOME
rm update* > /dev/null 2>&1
echo "Successfully Changed Termux"
echo
echo "Restart Termux"
}
#default_setup="Y"
clear
echo
echo
cd $HOME
if [ -e Termux-New-Look-Installed ];then
echo -e "\033[92m Termux-New-Look is installed so not installing Termux-Tools"
else
echo
fi
echo -e -n "	\033[92m Stating setup\033[91m (\033[93mY\033[94m/\033[96mN) "
read setup
#setup="${setup:-{default_setup}}"
case $setup in
y|Y)start ;;
n|N)exit 0 ;;
esac
