# encfs-password-recover
EncFS Password Recovery Tool 
----------------------------
- This is a EncFS password recovery tool if you lost own password but you know the base words

Usage:
----------------------------
#### 1.) Generate your 'ownpasslist' to file
-    a.) Edit the encfs-password-genpwlist.py contain an example with "#EncFS$Rec@ver!123" password
-	Test generator with demo key 
-	Go to step 2.) and skip b.)
-    b.) Add your know word to KNOWWORDS file
-	See: encfs-password-genrandom.sh -h and use this tool
-	Run encfs-password-genrandom.sh 10000 10 > ownpasslist
-	Skip 2.)

#### 2.) Run the best the python password generator, example: 
    `python encfs-password-genpwlist.py > ownpasslist`
    
#### 3.) Run the recovery tool, example: 
    `encfs-password-recover.sh ~/path/to/encfs ~/path/to/decrypted ~/path/to/ownpasslist`

#### Usage example with datas of demoz
    `
    cd /tmp
    git clone https://github.com/blackPantherOS/encfs-password-recover.git
    cd encfs-password-recover
    ./encfs-password-recover.sh /tmp/encfs-password-recover/enc /tmp/encfs-password-recover/denc /tmp/encfs-password-recover/pwlist
    `
#### Screenshots
- English

![recover_en](https://github.com/blackPantherOS/encfs-password-recover/blob/master/screenshots/recover_en.png)

- Hungarian

![recover_hu](https://github.com/blackPantherOS/encfs-password-recover/blob/master/screenshots/recover_hu.png)


