#! -*- coding:utf8 -*-

import pprint
import json
import requests

def main():
    response = requests.post(
            'http://127.0.0.1:8000/youtube/artist',
            params={
                'name' : u"testtesttest",
                'foundation_date' : "2015-06-23",
                'member' : 12
            })
    #response = requests.get(
    #    'http://127.0.0.1:8000/youtube/artist',
    #    params={})
    pprint.pprint(response.json)

if __name__ == '__main__':
    main()
