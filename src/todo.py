
class Speed(object):
    name = ""

    def __init__(self, year, month, date):
        self.file_path = "{0}_{1}.json".format(year, month)
        self.year = year
        self.month = month
        self.date = date
        self.param = {}

    def add(self, title, complete):
        pass

    def remove(self, id):
        pass

    def update(self, id):
        pass

    def list(self, date):
        pass


class Todo(Speed):
    name = "todo"

    def __init__(self, year, month, date):
        super(Todo, self).__init__(year, month, date)
        from tinydb import TinyDB, Query
        self.query = Query()
        db = TinyDB(self.file_path)
        self.table = db.table("todos")

    def add(self, title, complete):
        self.table.insert({"title": title, "complete": complete, "date": "{0}日".format(self.date)})

    def remove(self, id):
        pass

    def update(self, id):
        pass

    def list(self):
        from tinydb import Query
        res = self.table.search(self.query.date == "{0}日".format(self.date))
        print(" ---- ", "{0}日".format(self.date), " ---- ")
        for it in res:
            check = '| [x] |' if it['complete'] else '| [ ] |'
            print(check, it['title'])


class Memo(Speed):
    pass


class Diary(Speed):
    pass
