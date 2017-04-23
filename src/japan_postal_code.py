# -*- coding: utf-8 -*-

base = "http://api.aoikujira.com/zip/xml/"


def show_postal_code(code):
    from bs4 import BeautifulSoup
    import urllib.request as req

    if len(code) != 7:
        return
    url = base + "{0}".format(code)
    res = req.urlopen(url)
    soup = BeautifulSoup(res, "html.parser")
    ken = soup.find("ken").string
    shi = soup.find("shi").string
    cho = soup.find("cho").string
    return ken, shi, cho
