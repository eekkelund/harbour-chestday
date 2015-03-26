#!/usr/bin/env python
# -*- coding: utf-8 -*-
import pyotherside
import datetime
import random

ItIs = ["LIGHTWEIGHT BABY", "HIT THE GYM BRAH", "REK DAT CHEST", "GET UNDER DA BARBELL", "You know what to do", "Go to make AAALL KIND OF GAINS", "YEAAH BUDDYY", "I COMMAND YO TO GROW"]
ItsNot = ["Just go train ur legs", "Not worth it", "Just go home", "Why even bother", "Took pwo for nothing"]
arnot = ["arnot.jpg", "arnot2.jpg", "arnot3.jpg", "arnot4.jpg"]
arnyes = ["arnyes.jpg", "arnyes2.jpg", "arnyes3.jpg", "arnyes4.jpg"]


def chest():
    day = datetime.datetime.today().weekday()
    if day == 0:
        return(["IT'S CHESTDAY!!", random.choice(ItIs), random.choice(arnyes)])
    else:
        return(["It's not chestday..", random.choice(ItsNot), random.choice(arnot)])

chest()
