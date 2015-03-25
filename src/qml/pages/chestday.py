#!/usr/bin/env python
# -*- coding: utf-8 -*-
import pyotherside
import datetime
import random

ItIs = ["LIGHTWEIGHT BABY", "HIT THE GYM BRAH", "REK DAT CHEST", "GET UNDER DA BARBELL", "You know what to do"]
ItsNot = ["Just go train ur legs", "Not worth it", "Just go home", "Why even bother"]
arnot = ["arnot.jpg", "arnot2.jpg", "arnot3.jpg"]
arnyes = ["arnyes.jpg", "arnyes2.jpg", "arnyes3.jpg"]


def chest():
    day = datetime.datetime.today().weekday()
    if day == 0:
        return(["IT'S CHESTDAY!!", random.choice(ItIs), random.choice(arnyes)])
    else:
        return(["It's not chestday..", random.choice(ItsNot), random.choice(arnot)])

chest()
