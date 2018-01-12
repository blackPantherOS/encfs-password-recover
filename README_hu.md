# encfs-password-recover
EncFS jelszó helyreállíó eszköz 
----------------------------
- Ez egy EncFS jelszó helyreállító eszköz, ha tudod a lehetséges karaktereket de a kombinációt nem. 
- Két jelszógenerátor tud neked segíteni, hogy létrehozd a saját jelszóvariáció-listádat

Használat:
----------------------------
#### 1.) Hozd létre a 'sajatjelszolista' fájlodat
-    a.) Szerkeszd meg a encfs-password-genpwlist.py fájlt ami már tartalmaz egy "#EncFS$Rec@ver!123" demó jelszót
-	Teszteld le a generátort a demo kulccsal, ebben az esetben
-	ugorj a 2.) pontra és hagyd ki a b.) pontot

-    b.) Add hozzá a saját karaktereidet a KNOWWORDS fájlhoz
-	Nézd meg: encfs-password-genrandom.sh -h és használd ezt az eszközt így:
-	Futtatás encfs-password-genrandom.sh 10000 10 > ownpasslist
-	Ebben az esetben hagyd ki a 2.) pontot

#### 2.) Futtasd a jobb python jelszó generatort, például: 
    `python encfs-password-genpwlist.py > ownpasslist`
    
#### 3.) Futtasd a helyreállító eszközt, például: 
    `encfs-password-recover.sh ~/path/to/encfs ~/path/to/decrypted ~/path/to/ownpasslist`
    
#### Screenshots
- English

![recover_en](https://github.com/blackPantherOS/encfs-password-recover/blob/master/screenshots/recover_en.png)

- Hungarian

![recover_hu](https://github.com/blackPantherOS/encfs-password-recover/blob/master/screenshots/recover_hu.png)


