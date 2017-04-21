# -*- coding: utf-8 -*-

import calendar


def calendar_list(year, month):
    for m in month:
        c = calendar.month(int(year), int(m))
        print(c)
