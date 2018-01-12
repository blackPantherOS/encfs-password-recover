#!/bin/sh

#*********************************************************************************************************
#*   __     __               __     ______                __   __                      _______ _______   *
#*  |  |--.|  |.---.-..----.|  |--.|   __ \.---.-..-----.|  |_|  |--..-----..----.    |       |     __|  *
#*  |  _  ||  ||  _  ||  __||    < |    __/|  _  ||     ||   _|     ||  -__||   _|    |   -   |__     |  *
#*  |_____||__||___._||____||__|__||___|   |___._||__|__||____|__|__||_____||__|      |_______|_______|  *
#* http://www.blackpantheros.eu | http://www.blackpanther.hu - kbarcza[]blackpanther.hu * Charles Barcza *
#*************************************************************************************(c)2002-2018********

# This is very useful tool if you lost exactly passwd for your Encfs.
# Written by Charles K Barcza - kbarcza@blackpanther.hu

NUM="$1"
LONG="$2"

# added demo know words by passwordexample file
KNOWWORDS=KNOWWORDS

elo(){
    echo "
    Usage: 
    
    $(basename $0) WANT_PASS_NUMBER CHARACTER_LONG
    
	example: $(basename $0) 20000
    
    To generated passwords store your 'knowpasswds' file:
    
	$(basename $0) 20000 10 > ownpasswds
    "
    exit

}
if [ ! -f "$KNOWWORDS" ];then
echo "
    Your Password examples $KNOWWORDS file is missing!
    The --help or -h usable as well
    Now created a empty file, the name is: $KNOWWORDS, 
    Please enter your know words from your remember passwd:
    
    "
    touch $KNOWWORDS
    exit
fi
if [ "$NUM" = -h -o "$NUM" = "--help" ];then
    elo
fi

if [ ! -n "$LONG" ];then
    LONG=$(cat $KNOWWORDS | wc -l)
    [ "$NUM" != "--auto" ]&&echo " * Passwd long does not entered. Set to $LONG long..(use: -h or --auto)"
    sleep 2
    EXIT=1
fi

if [ "$NUM" != "--auto" -o ! -n "$NUM" ];then
    NUM=1000
    echo " * Numbers of passwds does not entered. Generate $NUM piece.. (use: -h or --auto)"
    sleep 2
    EXIT=1
fi
if [ "$NUM" != "--auto" -a -n "$EXIT" ];then
echo " * DEMO Genrator now start and stop when is counter reaches to end (Cancel: Ctrl+C)"
sleep 4
fi
count=0
while true; do 
 [ "$count" == $NUM ]&&exit
 shuf -n $LONG $KNOWWORDS | sed "s/./\u&/" | tr -d "\n" 
 echo
 count=$(expr $count + 1)
done
