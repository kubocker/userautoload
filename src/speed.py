
import datetime

class Speed(object):
    def __init__(self, url):
        self._url = url

    def get_url(self):
        return self._url

    def set_url(self):
        self._url = url

    def del_url(self):
        del self._urlA

    def get_json(self, type, parms={}):
        import requests
        response = requests.get("{0}/{1}")

    url = property(get_url, set_url, del_url, "url property")

    def request(self, type):
        import requests
        #reponse = requests.get("{0}/{1}".format(self.url, type), {})



class Todo(Speed):
    '''
    Todo:
    '''
    def __init__(self):
        print("this is todo...")

    def get_list(self, date="today"):
        pass

    def get_json(self, type, params={}):
        pass




class Memo(Speed):
    '''
    Memo:
    '''
    def __init__(self):
        pass


class Diary(Speed):
    '''
    Diary:
    '''
    def __init__(self):
        pass



