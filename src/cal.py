# -*- coding: utf-8 -*-

import calendar
import datetime

#print(calendar.month(2017,4))
#print(calendar.monthcalendar(2017,4))

def calendar_list(year, month):
    for m in month:
        c = calendar.month(int(year), int(m))
        print(c)

