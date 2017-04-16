
import datetime

class Speed(object):
    def __init__(self, url):
        self._url = url

    def get_url(self):
        return self._url

    def set_url(self, url):
        self._url = url

    def del_url(self):
        del self._urlA

    url = property(get_url, set_url, del_url, "url property")

    def get_date(self, date):
        import datetime
        if date == "today":
            return datetime.datetime.today()
        elif date == "yesturday":
            return datetime.datetime.today() - datetime.timedelta(days=1)
        else:
            return datetime.datetime.today() + datetime.timedelta(days=1)

    def set_path(self):
        pass

    def get_json(self, param, path, params={}):
        import requests
        response = requests.get(
                self.url + path,
                params)
        self.json2 = response.json()

    def request(self, type, params={}):
        import requests
        response = requests.get(
                "http://127.0.0.1:8000/todo/title",
                params)
        self.json = response.json()
         



class Todo(Speed):
    '''
    Todo:
    '''
    base_url = "todo/"

    def __init__(self):
        print("this is todo...")

    def get_list(self, date="today"):
        pass

    def set_path(self, path):
        self.path = self.base_url + path

    def get_json(self, param, path, params={}):
        super(Todo, self).get_json(param, path, params)

    def setup_ui(self):
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



