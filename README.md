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
-	See: encfs-password-genrandom.sh -h and user this tool
-	Run encfs-password-genrandom.sh 10000 10 > ownpasslist
-	Skip 2.)

#### 2.) Run the best the python password generator, example: 
    `python encfs-password-genpwlist.py > ownpasslist`
    
#### 3.) Run the recovery tool, example: 
    `encfs-password-recover.sh ~/path/to/encfs ~/path/to/decrypted ~/path/to/ownpasslist`

