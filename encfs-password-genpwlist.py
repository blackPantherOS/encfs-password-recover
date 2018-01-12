#!/usr/bin/env python3
#-*- coding:utf-8 -*-

#*********************************************************************************************************
#*   __     __               __     ______                __   __                      _______ _______   *
#*  |  |--.|  |.---.-..----.|  |--.|   __ \.---.-..-----.|  |_|  |--..-----..----.    |       |     __|  *
#*  |  _  ||  ||  _  ||  __||    < |    __/|  _  ||     ||   _|     ||  -__||   _|    |   -   |__     |  *
#*  |_____||__||___._||____||__|__||___|   |___._||__|__||____|__|__||_____||__|      |_______|_______|  *
#* http://www.blackpantheros.eu | http://www.blackpanther.hu - kbarcza[]blackpanther.hu * Charles Barcza *
#*************************************************************************************(c)2002-2018********

# This is very useful tool if you lost exactly passwd for your Encfs.
# Written by Miklos Horvath - hmiki@blackpanther.hu

# the demo passwd is "#EncFS$Rec@ver!123"

import itertools
combs = itertools.product(
        ["","!","$","#"],
        ["e","E"],
        ["nc"],
        ["f","F"],
        ["s","S"],
        ["","!","@","$"],
        ["r","R"],
        ["ec"],
        ["o","@"],
        ["ver"],
        ["","!","$","#"],
        ["12"],
        ["","!","$","@"],
        ["3","#"],
        ["","!","$","@"]

# OTHER EXAMPLE
#
#        ["","4"],
#        ["","!","$","@"],
#        ["","5"],
#        ["","!","$","@"],
#        ["","6"],
#        ["","!","$","@"],
#        ["","7"],
#        ["","!","$","@"],
#        ["","8"],,
#        ["","!","$","@"],
#        ["","91011"],
#        ["","!","$","@"]
#
)



for e in combs:
    pwd = "".join(e)
    print(pwd)
    # use for test and stop if generated your demo key, just add XXX to key to ignore this line, or delete XXX for use for test
    if pwd == "XXX#EncFS$Rec@ver!123":
        print ("-- OK -- Last key is your generated demo key!")
        break
