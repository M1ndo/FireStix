#!/bin/bash
# Created By r2dr0dn

## Check IF User Is Root..:)

if [[ "$(id -u)" -ne 0 ]]; then
   printf "\e[1;31m[!]\e[0;31m Error: Please Run This Script As Root !\n"
   exit 1
fi

## Check If Nmap Exist..:)

if [[ ! -f /usr/bin/nmap ]]
   then
      printf "\n\e[1;31m[!] \e[0;33m Nmap Is Not Exist \e[1;31m !!!\n"
      printf "\n\e[1;33m[?] \e[1;32m Do You Want To Install It:\e[1;36m[Y:n]:>\e[1;31m "
      read ask
      while [[ $ask == "" ]]
      do
        printf "\n\e[1;31m[!] \e[1;32m Do You Want To Install It:\e[1;36m[Y:n]:>\e[1;31m "
        read ask
      done
      if [[ $ask == "y" || $ask == "Y" ]]
         then
            wget -q --spider https://www.google.com
            if [[ $? == "0" ]]
               then
                  printf "\n\e[1;32m[*]\e[0;32m Installing.....\e[1;31m[Nmap]\n"
		  sleep 1.5
                  apt-get -y update && apt-get -y install nmap
                  if [[ -f /usr/bin/nmap ]]
                     then
                        printf "\n\e[1;32m[>] Done! \e[1;33m[Nmap]\e[1;32m Is Installed Now\e[1;33m :)"
                        printf "\n\e[1;34m[*] Run Script Now\e[1;31m....."
                        sleep 1.5
			printf "\e[1;32m Welcome :)"
			sleep 0.60
                  else
                       printf "\n\e[1;31m[!]\e[0;31m[ERROR]\e[1;33m Something Went Wrong \e[0;31m !!!"
                       printf "\n\e[1;32m[*]\e[0;32m Please Install Nmap Manually Using This Command:>\e[1;36m apt-get -y update && apt-get -y install nmap \n"
		       exit 1
		  fi
            else
	        printf "\n\e[1;31m[!]\e[0;31m[ERROR]> \e[1;33m Your Not Connected To Internet \e[1;31m !!!\n"
		printf "\e[1;32m[*]\e[0;32m Please Connect To Internet And Try Again \e[1;32m :)\n"
		exit 1
	    fi
      else
	 printf "\n\e[1;31m[!]\e[1;33m Ok But You Must Install\e[1;34m [Nmap]\e[1;33m For Run This Script..."
	 sleep 0.60
	 printf '\e[1;31m Bye \e[1;32m:)\n'
	 exit 1
      fi
fi

## Except Ctrl+c..:)

trap ctrl_c INT
ctrl_c () {

 printf "\n\e[1;31m [!] \e[1;33mExiting....."
 sleep 1
 printf "\e[1;32mGoodBye\e[0;31m :)\n"
 exit 1
}
#############Colors##########33
Green="\e[1;32m"
Blue="\e[1;34m"
Blue2="\e[0;34m"
Grey="\e[1;30m"
Reset="\e[0m"
yellow="\e[1;33m"
Red="\e[1;31m"
idk="\e[1;31m"
purple="\e[1;35m"
Light="\e[95m"
cyan="\e[1;36m"
stong="\e[39m"
unknown="\e[38;5;82m"
unknown2="\e[38;5;198m"
unknown3="\e[38;5;208m"
unknown4="\e[38;5;167m"
unknown5="\e[38;5;91m"
unknown6="\e[38;5;210m"
unknown7="\e[38;5;165m"
unknown8="\e[38;5;49m"
unknown9="\e[38;5;160m"
unknown10="\e[38;5;51m"
unknown11="\e[38;5;13m"
unknown12="\e[38;5;162m"
unknown13="\e[38;5;203m"
unknown14="\e[38;5;113m"
unknown15="\e[38;5;14m"
################################
## Home Menu
## All Options..:)

echo ""
sleep 0.1
echo -e $Cyan   "     +${yellow}-------------------------------------------------------------------${Cyan}+"
sleep 0.1
echo -e $yellow   "    |                                                                   |"
sleep 0.1
echo -e "     |$yellow           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM      |"
sleep 0.1
echo -e "     |$yellow           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM      |"
sleep 0.1
echo -e "     |$yellow           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM      |"
sleep 0.1
echo -e "     |$unknown2           MMMMMMMMWd. .kWMMMMMMMMMMMMMMMMMMMMMMW0KMMMMMMMMMM      |"
sleep 0.1
echo -e "     |$unknown2           MMMMMMMMk:;. 'OMMMMMMMMMMMMMMMMMMMMMWx.,0MMMMMMMMM      |"
sleep 0.1
echo -e "     |$unknown2           MMMMMMMK:ok.  ,0MMMMMMMMMMMMMMMMMMMWO. .cXMMMMMMMM      |"
sleep 0.1
echo -e "     |$unknown2           MMMMMMNl:KO.   ;KWNXK00O0000KXNWMMWO' .c;dWMMMMMMM      |"
sleep 0.1
echo -e "     |$unknown2           MMMMMMx,xNk.    .;'...    ....';:l:.  ,0l,0MMMMMMM      |"
sleep 0.1
echo -e "     |$unknown2           MMMMMK;,l;. .,:cc:;.                  .dx,lWMMMMMM      |"
sleep 0.1
echo -e "     |$unknown2           MMMMWo    ,dKWMMMMWXk:.      .cdkOOxo,. ...OMMMMMM      |"
sleep 0.1
echo -e "     |$unknown2           MMMM0'   cXMMWKxood0WWk.   .lkONMMNOOXO,   lWMMMMM      |"
sleep 0.1
echo -e "     |$unknown2           MMMWl   ;XMMNo.    .lXWd. .dWk;;dd;;kWM0'  '0MMMMM      |"
sleep 0.1
echo -e "     |$unknown2           kxko.   lWMMO.      .kMO. .OMMK;  .kMMMNc   oWMMMM      |"
sleep 0.1
echo -e "     |$unknown2           X0k:.   ;KMMXc      :XWo  .dW0c,lo;;xNMK,   'xkkk0      |"
sleep 0.1
echo -e "     |$unknown2           kko'     :KMMNkl::lkNNd.   .dkdKWMNOkXO,    .lOKNW      |"
sleep 0.1
echo -e "     |$unknown2           0Kk:.     .lOXWMMWN0d,       'lxO0Oko;.     .ckkOO      |"
sleep 0.1
echo -e "     |$unknown2           kkkdodo;.    .,;;;'.  .:ooc.     .        ...ck0XN      |"
sleep 0.1
echo -e "     |$unknown2           0XWMMMMWKxc'.          ;dxc.          .,cxKK0OkkOO      |"
sleep 0.1
echo -e "     |$unknown2           MMMMMMMMMMMN0d:'.  .'        .l'  .;lxKWMMMMMMMMMN      |"
sleep 0.1
echo -e "     |$unknown2           MMMMMMMMMMMMMMMN0xo0O:,;;;;;;xN0xOXWMMMMMMMMMMMMMM      |"
sleep 0.1
echo -e "     |$unknown5           MMMMMMMMMMMMMMMMMMMMMMWWWWWMMMMMMMMMMMMMMMMMMMMMMM      |"
sleep 0.1
echo -e "     |$unknown5           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM      |"
sleep 0.1
echo -e "     |$unknown5           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM      |"
sleep 0.1
echo -e "     |$unknown5           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM      |"
sleep 0.1
echo -e "     |$unknown5           MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM      |"
sleep 0.1
echo -e $Cyan   "     +${yellow}-------------------------------------------------------------------${yellow}+${unknown5}"
sleep 0.1
echo -e "                          |${Blue} Love${stong}     You${Reset}    ${unknown4} Physics${Reset}${unknown2} |"
sleep 0.1
echo -e "                          ${Cyan}+${yellow}--------------------------${Reset}${Cyan}+"
sleep 0.1
printf "\n\e[1;34m[---] SCRIPT: \e[1;31m[FireStix]\e[1;32m>>>Scanning.\e[1;34m[---][\e[1;31m+\e[1;34m][---] CodedBy:\e[1;31m [r2dr0dn]\e[1;32m>>>r2dr0dn@pm.me.\e[1;34m [---]\n\e[1;35m============================================================================================\n"
sleep 0.1
printf "\n\e[1;32m[#]\e[1;31m Choice \e[1;34mYour \e[1;33mNmap \e[1;36mStrategy..\e[1;35m(^o^)\n"
sleep 0.1
printf "\n"
sleep 0.1
printf '\e[1;35m[1] \e[1;31mZenmap  Strategies\n\e[1;34m=======================\n'
sleep 0.1
printf $Blue2'\t[01]'$Reset'\e[1;34m     >  '$unknown'  Intense Scan \n'
sleep 0.1
printf $Blue2'\t[02]'$Reset'\e[1;34m     >  '$unknown3'  Intense Scan, Plus UDP\n'
sleep 0.1
printf $Blue2'\t[03]'$Reset'\e[1;34m     >  '$unknown4'  Intense Scan, All TCP Ports\n'
sleep 0.1
printf $Blue2'\t[04]'$Reset'\e[1;34m     >  '$unknown6'  Intense Scan, No ping\n'
sleep 0.1
printf $Blue2'\t[05]'$Reset'\e[1;34m     >  '$unknown7'  Ping Scan\n'
sleep 0.1
printf $Blue2'\t[06]'$Reset'\e[1;34m     >  '$unknown8'  Quick Scan\n'
sleep 0.1
printf $Blue2'\t[07]'$Reset'\e[1;34m     >  '$unknown9'  Quick Scan Plus\n'
sleep 0.1
printf $Blue2'\t[08]'$Reset'\e[1;34m     >  '$unknown10'  Quick Traceroute\n'
sleep 0.1
printf $Blue2'\t[09]'$Reset'\e[1;34m     >  '$unknown11'  Regular Scan\n'
sleep 0.1
printf $Blue2'\t[10]'$Reset'\e[1;34m     >  '$unknown12'  Slow Comprehensive Scan\n\n'

sleep 0.1
printf '\e[1;35m[2] \e[1;31mFirewall/IDS Evasion And Spoofing\n\e[1;34m=====================================\n'
sleep 0.1
printf $Blue2'\t[11]'$Reset'\e[1;34m     >  '$unknown13'  Fragmentation\n'
sleep 0.1
printf $Blue2'\t[12]'$Reset'\e[1;34m     >  '$unknown14'  Change Default MTU Size Number\n'
sleep 0.1
printf $Blue2'\t[13]'$Reset'\e[1;34m     >  '$unknown15'  Fragmentation + MTU\n'
sleep 0.1
printf $Blue2'\t[14]'$Reset'\e[1;34m     >  '$unknown15'  Generates A Random Number Of Decoys\n'
sleep 0.1
printf $Blue2'\t[15]'$Reset'\e[1;34m     >  '$unknown14'  MAC Address Spoofing\n\n'

sleep 0.1
printf '\e[1;35m[3] \e[1;31mNmap Scripting Engine (NSE)\n\e[1;34m===============================\n'
sleep 0.1
printf $Blue2'\t[16]'$Reset'\e[1;34m     >  '$unknown13'  Not Intrusive\n'
sleep 0.1
printf $Blue2'\t[17]'$Reset'\e[1;34m     >  '$unknown12'  Default\n'
sleep 0.1
printf $Blue2'\t[18]'$Reset'\e[1;34m     >  '$unknown11'  Default Or Safe \n'
sleep 0.1
printf $Blue2'\t[19]'$Reset'\e[1;34m     >  '$unknown10'  Default And Safe \n'
sleep 0.1
printf $Blue2'\t[20]'$Reset'\e[1;34m     >  '$unknown9'  All scripts \n\n'

sleep 0.1
printf '\e[1;35m[4] \e[1;31mMiscelaneous\n\e[1;34m================\n'
sleep 0.1
printf $Blue2'\t[21]'$Reset'\e[1;34m     >  '$unknown8'  Detect Service Version\n'
sleep 0.1
printf $Blue2'\t[22]'$Reset'\e[1;34m     >  '$unknown7'  Operating System Scan\n'
sleep 0.1
printf $Blue2'\t[23]'$Reset'\e[1;34m     >  '$unknown6'  OS and Service Detect\n'
sleep 0.1
printf $Blue2'\t[24]'$Reset'\e[1;34m     >  '$unknown4'  Version Detect\n'
sleep 0.1
printf $Blue2'\t[25]'$Reset'\e[1;34m     >  '$unknown3'  Full Port Scan (TCP)\n'
sleep 0.1
printf $Blue2'\t[26]'$Reset'\e[1;34m     >  '$unknown'  Full Port Scan (UDP/Very Slow)\n'
sleep 0.1
printf $Blue2'\t[27]'$Reset'\e[1;34m     >  '$Light'  Most Common Ports (TCP)\n'
sleep 0.1
printf $Blue2'\t[28]'$Reset'\e[1;34m     >  '$Grey'  Most Common Ports (UDP)\n'
sleep 0.1
printf $Blue2'\t[29]'$Reset'\e[1;34m     >  '$cyan'  Faster Regular Scan\n'
sleep 0.1
printf $Blue2'\t[30]'$Reset'\e[1;34m     >  '$purple'  GET Site Map\n'
sleep 0.1
printf $Blue2'\t[31]'$Reset'\e[1;34m     >  '$Green'  Cross-Site Scripting(XSS) Scan'
sleep 0.1
printf '\n\e[1;0m==================\n\e[1;32m[#] \e[1;33mCtrl+C \e[1;31m For Exit -->\n\n '
## Done !
# Usage Argv..:)

if [[ "$1" == "-h" || "$1" == "--help" || "$1" == "?" || "$1" == "-hh" || "$1" == "help" ]]
   then
   printf '\e[1;0m[>] Usage:\e[1;32m ./FireStix\e[1;36m <TARGET> <CHOICE NUM> \n\e[1;35m [>] Ex:\e[1;36m ./FireStix \e[1;32m 192.168.1.119 \e[1;31m 25\n'
   exit 1
fi
## Set Scan Type..:)

if [[ "$2" -eq "" ]]; then
printf "\e[0;32m─[\e[1;31mFireStix\e[0;32m]─[\e[1;33mYour Choice\e[0;32m]:\n"
printf "\e[1;32m └──╼>\e[1;36m  "
read scan
while [[ $scan == "" ]]
do
  echo -e -n "\033[1;31m [!][\033[1;34mEnter Your Choice?\033[1;31m]\033[36m ==>\033[31m "
  read scan
done
else
   scan="$2"
fi
## Check If Choice Exist OR Not..:)
if [ "$scan" -gt "31" ]
   then
      printf "\n\e[1;31m[!]\e[0;31m[ERROR] Of Your Choice[\e[1;33m$scan\e[0;31m] Does Not Exist In \e[1;32mMenu\e[1;31m !!!\n"
      exit 1
fi
## Set TARGET..:)

if [[ "$1" == "" ]]; then
echo -e -n "\033[1;31m [\033[1;34mTARGET\033[1;31m]\033[36m ==>\033[31m "
read target
while [[ $target == "" ]]
do
  echo -e -n "\033[1;31m [!][\033[1;34mTARGET?\033[1;31m]\033[36m ==>\033[31m "
  read target
done
else
   target="$1"
fi
## Started..:)
if [[ $scan == '1' ]]
   then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Intense Scan"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -T4 -A -v $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi
elif [[ $scan == '2' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Intense Scan, Plus UDP"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -sS -sU -T4 -A -v $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '3' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Intense Scan, All TCP Ports"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -p 1-65535 -T4 -A -v $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '4' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Intense Scan, No ping"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -T4 -A -v -Pn $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi


elif [[ $scan == '5' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Ping Scan"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -sn $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi


elif [[ $scan == '6' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Quick Scan"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -T4 -F $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '7' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Quick Scan Plus"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -v -sV -T4 -O -F --version-light $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '8' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Quick Traceroute"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -sn --traceroute $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '9' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Regular Scan"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '10' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Slow Comprehensive Scan"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '11' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Fragmentation"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -f $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi


elif [[ $scan == '12' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Change Default MTU Size Number"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
             default_mtu="24"
             read -e -p "MTU Size (Default 24):" mtu
             mtu="${mtu:-${default_mtu}}"
	     nmap -v --mtu $mtu $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '13' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Fragmentation + MTU"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
             default_mtu="24"
             read -e -p "MTU Size (Default 24):" mtu
             mtu="${mtu:-${default_mtu}}"
	     nmap -v -f --mtu $mtu $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '14' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Generates A Random Number Of Decoys"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -D RND:10 $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '15' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m MAC Address Spoofing"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v --spoof-mac Cisco $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '16' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Not Intrusive"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v --script "not intrusive" $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '17' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Default"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v --script "default" $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '18' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Default Or Safe"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v --script "default or safe" $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '19' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Default And Safe"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v --script "default and safe" $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '20' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m All scripts"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v --script "all" $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '21' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Detect Service Version"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -sV -T4 -Pn -oG ServiceDetect  $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '22' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Operating System Scan"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -O -T4 -Pn -oG OSDetect  $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '23' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m OS and Service Detect"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -O -sV -T4 -Pn -p U:53,111,137,T:21-25,80,139,8080 -oG OS_Service_detect  $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '24' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Version Detect"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -sS -sV -T5 -F -A -O $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '25' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Full Port Scan (TCP)"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -sS -T4 -Pn -p 0-65535 -oN FullTCP  $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '26' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Full Port Scan (UDP/Very Slow)"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -sU -T4 -Pn -p 0-65535 -oN FullUDP  $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi
elif [[ $scan == '27' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Most Common Ports (TCP)"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -sS -T4 -Pn -oG TopTCP  $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '28' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Most Common Ports (UDP)"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -sS -T4 -Pn -oG TopUDP  $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '29' ]]
    then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
       if [[ $? == "0" ]]
          then
	     clear
	     sleep 0.20
	     printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
	     sleep 0.15
	     printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
	     sleep 0.15
	     printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Faster Regular Scan"
	     sleep 0.15
	     printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
	     sleep 2
	     nmap -v -T5 $target
       else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
       fi

elif [[ $scan == '30' ]]
     then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
        if [[ $? == "0" ]]
          then
             clear
             sleep 0.20
             printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
             sleep 0.15
             printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
             sleep 0.15
             printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m GET Site Map"
             sleep 0.15
             printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
             nmap -Pn --script=http-sitemap-generator $target

        else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
        fi

elif [[ $scan == '31' ]]
     then
       check="$(sed -e 's|^[^/]*//||' -e '/^[^@]*@/s///' -e 's|/.*$||' <<<$target)"
       ping -c 1 $check > /dev/null 2>&1
        if [[ $? == "0" ]]
          then
             clear
             sleep 0.20
             printf "\n\e[1;35m==========>\e[1;36m Config\e[1;35m <=========="
             sleep 0.15
             printf "\n\e[1;32m[+]\e[1;35m TARGET:\e[1;31m $target\n"
             sleep 0.15
             printf "\e[1;32m[*]\e[1;35m Scan Type:\e[1;33m Cross-Site Scripting(XSS) Scanning"
             sleep 0.15
             printf "\n\n\033[34m[*]\e[1;32m Scanning\033[1;31m......\n\e[1;37m"
              # Command :)
             nmap -Pn --script=http-xssed $target

        else
	    printf "\n\e[0;31m[!]\e[1;31m[ERROR]\e[1;33m I Can't Connect To TARGET[ \e[1;34m$target\e[1;33m ] \e[1;31m !!!"
	    printf "\n\e[0;33m[!]\e[1;33m Please Check Your Network Connection \e[1;31m{OR}\e[1;33m This Target Server Not Found \e[1;31m!!!\n"
        fi

fi
#'='!!
