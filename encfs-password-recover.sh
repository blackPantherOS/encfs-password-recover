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

### encfs-password-recover.sh ~/ecripted ~/decripted /path/passwdlist
### enter the full path of folders and your password file!

[ ! -n "$1" ]&& echo "Missing first parameter: ~/encrypted directory" && exit
[ ! -n "$2" ]&& echo "Missing second parameter: ~/Dencrypted directory" && exit
[ ! -n "$3" ]&& echo "Missing 3rd parameter: ~/passwordlist file" && exit

counter=1
lines=$(expr `cat $3 | wc -l` + 1)
echo "Passwds Num: $lines"
sleep 1
while [ true ]; do
   echo -n "Kulcs: $(head -n $counter $3 | tail -n 1) -> " 
   echo "$(head -n $counter $3 | tail -n 1)" | encfs $1 $2 --stdinpass 
    if [ "$?" -eq "0" ]; then
	echo "Found password!"; echo
	echo "  ****************************************************"
        echo -n "  *  Key recovered - the password is: "
        echo "$(head -n $counter $3 | tail -n 1)"
	echo "  ****************************************************"
	echo 
        exit
    fi
    counter=$(($counter + 1))
    [ "$counter" = "$lines" ]&& exit 0
done