G='\e[01;32m'	# GREEN
R='\e[01;31m'	# RED
Y='\e[01;33m'	# YELLOW
B='\e[01;34m'	# BLUE
V='\e[01;35m'	# VIOLET
Bl='\e[01;a30m'   # BLACK
C='\e[01;36m'	# CYAN
W='\e[01;37m'	# WHITE
N='\e[00;37;40m' # NEUTRAL

function setres(){
    echo -e "$C Set Resolusi"
    sleep 0.5
    wm size 1080x2340
    wm density 362
    clear
    cmd
}

function resetres(){
    echo -e "$C Reset Resolusi"
    sleep 0.5
    wm size reset
    wm density reset
    clear
    cmd
}

function openTG(){
	echo -e "$G Open App"
	am start -W org.telegram.messenger/org.telegram.ui.LaunchActivity
	sleep 2
}

function wipeTG(){
	echo -e "$C Wipe TG"
    am force-stop org.telegram.messenger
    pm clear org.telegram.messenger
    
    pm grant org.telegram.messenger android.permission.ACCESS_FINE_LOCATION
    pm grant org.telegram.messenger android.permission.READ_CALL_LOG
    pm grant org.telegram.messenger android.permission.CALL_PHONE 
    pm grant org.telegram.messenger android.permission.READ_PHONE_NUMBERS 
    pm grant org.telegram.messenger android.permission.READ_PHONE_STATE  
    pm grant org.telegram.messenger android.permission.WRITE_CONTACTS  
    pm grant org.telegram.messenger android.permission.WRITE_EXTERNAL_STORAGE
    pm grant org.telegram.messenger android.permission.READ_EXTERNAL_STORAGE
    pm grant org.telegram.messenger android.permission.GET_ACCOUNTS
    pm grant org.telegram.messenger android.permission.READ_CONTACTS
    pm grant org.telegram.messenger android.permission.CAMERA
	sleep 1
}

function isi(){
	input text $1
}

function klik(){
	input tap $1 $2
}

function banner(){
	clear
	echo -e "$V---- SPAM MAIL by @muhaldyyy ----$N"
}

function spam(){
    no=$1
	echo -e "\n$G~ $no $N"
    wipeTG
    openTG
    klik 500 1950 #startmsg
    sleep 2
    isi 62$no
    sleep 1
    klik 960 1612 #cek
    sleep 0.5
    klik 960 1417 #yes
    sleep 8
    klik 500 1612 #didnt
    sleep 0.5
    klik 226 1460 #help
    sleep 2
    input text "BUKA%sDONG%sBANG"
    sleep 1
    klik 909 150 #send
    sleep 2
    echo $no >> done.txt
	sed -i '1d' number.txt
	input keyevent 3
	sleep 1
}

function spammail(){
    clear
    banner
	for nomer in $(cat number.txt)
	do
	    spam $nomer
	done
	echo "" > number.txt
}

function cmd(){
banner
echo -e "[1] Spam Mail"
echo -e "[2] Set Reso"
echo -e "[3] Reset Reso"
echo -e "[e] Exit"
echo -en "Menu : $N"
read menu
case "$menu" in
    1)
        spammail
    ;;
    2)
        setres
    ;;
    3)
        resetres
    ;;
    e)
        exit
    ;;
esac
}
cmd G='\e[01;32m'	# GREEN
R='\e[01;31m'	# RED
Y='\e[01;33m'	# YELLOW
B='\e[01;34m'	# BLUE
V='\e[01;35m'	# VIOLET
Bl='\e[01;a30m'   # BLACK
C='\e[01;36m'	# CYAN
W='\e[01;37m'	# WHITE
N='\e[00;37;40m' # NEUTRAL

function setes(){
    echo -e "$C Set Resolusi"
    sleep 0.5
    wm size 1080x2340
    wm density 362
    clear
    cmd
}

function resetres(){
    echo -e "$C Reset Resolusi"
    sleep 0.5
    wm size reset
    wm density reset
    clear
    cmd
}

function openTG(){
	echo -e "$G Open App"
	am start -W org.telegram.messenger/org.telegram.ui.LaunchActivity
	sleep 2
}

function wipeTG(){
	echo -e "$C Wipe TG"
    am force-stop org.telegram.messenger
    pm clear org.telegram.messenger
    
    pm grant org.telegram.messenger android.permission.ACCESS_FINE_LOCATION
    pm grant org.telegram.messenger android.permission.READ_CALL_LOG
    pm grant org.telegram.messenger android.permission.CALL_PHONE 
    pm grant org.telegram.messenger android.permission.READ_PHONE_NUMBERS 
    pm grant org.telegram.messenger android.permission.READ_PHONE_STATE  
    pm grant org.telegram.messenger android.permission.WRITE_CONTACTS  
    pm grant org.telegram.messenger android.permission.WRITE_EXTERNAL_STORAGE
    pm grant org.telegram.messenger android.permission.READ_EXTERNAL_STORAGE
    pm grant org.telegram.messenger android.permission.GET_ACCOUNTS
    pm grant org.telegram.messenger android.permission.READ_CONTACTS
    pm grant org.telegram.messenger android.permission.CAMERA
	sleep 1
}

function isi(){
	input text $1
}

function klik(){
	input tap $1 $2
}

function banner(){
	clear
	echo -e "$V---- SPAM MAIL by @muhaldyyy ----$N"
}

function spam(){
    no=$1
	echo -e "\n$G~ $no $N"
    wipeTG
    openTG
    klik 500 1950 #startmsg
    sleep 2
    isi 62$no
    sleep 1
    klik 960 1612 #cek
    sleep 0.5
    klik 960 1417 #yes
    sleep 8
    klik 500 1612 #didnt
    sleep 0.5
    klik 226 1460 #help
    sleep 2
    input text "BUKA%sDONG%sBANG"
    sleep 1
    klik 909 150 #send
    sleep 2
    echo $no >> done.txt
	sed -i '1d' number.txt
	input keyevent 3
	sleep 1
}

function spammail(){
    clear
    banner
	for nomer in $(cat number.txt)
	do
	    spam $nomer
	done
	echo "" > number.txt
}

function cmd(){
banner
echo -e "[1] Spam Mail"
echo -e "[2] Set Reso"
echo -e "[3] Reset Reso"
echo -e "[e] Exit"
echo -en "Menu : $N"
read menu
case "$menu" in
    1)
        spammail
    ;;
    2)
        setres
    ;;
    3)
        resetres
    ;;
    e)
        exit
    ;;
esac
}
cmd
