# encfs-password-recover
EncFS Password Recovery Tool 
----------------------------
- This is a password recovery tool for EncFS. If you lost your own password, but you know the base words, this might help you out.

Usage:
----------------------------
(I think. The original instructions were a bit vauge, so I'm interpreting a bit.)

There are two ways to generate the password list. One is to edit the
COMBS file and put fragments of what you thought the password contained
in that file. Then run `encfs-password-genpwlist.py` to generate a list
of passwords to try.

The other is to add a known words to the file called KNOWWORDS. Then run
`encfs-password-genrandom.sh` to generate the password list.

You only do one of these or the other.

Personally, I think the first method works better. I didn't quite get
the KNOWWORDS method.

When you have your list of passwords (called `ownpasslist` in the
instructions below), you then need to run `encfs-password-recover.sh` to
try out the varous possibilities. You do this as a second step regardless
of how you generated the password list above.

Here are the original instructions:
#### 1.) Generate your 'ownpasslist' to file
-    a.) Edit the COMBS file to suit your suspected password. The sample included is for "#EncFS$Rec@ver!123"
-	Test generator with demo key 
-	Go to step 2.) and skip b.)
-    b.) Add your known word to KNOWWORDS file
-	See: encfs-password-genrandom.sh -h and use this tool
-	Run encfs-password-genrandom.sh 10000 10 > ownpasslist
-	Skip 2.)

#### 2.) Run the python password generator
    python encfs-password-genpwlist.py > ownpasslist
    
#### 3.) Run the recovery tool
    encfs-password-recover.sh ~/path/to/encfs ~/path/to/decrypted ~/path/to/ownpasslist

#### Demo from start to finish
``` bash
cd /tmp
git clone https://github.com/blackPantherOS/encfs-password-recover.git
cd encfs-password-recover
./encfs-password-recover.sh /tmp/encfs-password-recover/enc /tmp/encfs-password-recover/denc /tmp/encfs-password-recover/pwlist
```
#### Screenshots
- English

![recover_en](https://github.com/blackPantherOS/encfs-password-recover/blob/master/screenshots/recover_en.png)

- Hungarian

![recover_hu](https://github.com/blackPantherOS/encfs-password-recover/blob/master/screenshots/recover_hu.png)


