
class SpeedModel(object):
    def __init__(self, url):
        self._url = url

    def get_url(self):
        return self._url

    def set_url(self):
        self._url = url

    def del_url(self):
        del self._urlA

    url = property(get_url, set_url, del_url, "url property")



class Todo(SpeedModel):
    '''
    Todo:
    '''
    def __init__(self):
        pass

    def get_list(self, date):
        pass


class Memo(SpeedModel):
    '''
    Memo:
    '''
    def __init__(self):
        pass


class Diary(SpeedModel):
    '''
    Diary:
    '''
    def __init__(self):
        pass



