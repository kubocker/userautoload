
let g:kbk#speed_base_path = base_path . "speed"

"py3file ~/Develop/kubocker/speed/app.py


function! SpeedTodo()
python3 << endpython3
import vim
import datetime
import requests
response = requests.get(
    "http://127.0.0.1:8000/todo/title/",
    params={})
json = response.json()
d = datetime.datetime.today()
print("{0}-{1}-{2}: todo is...".format(d.year, d.month, d.day))
print('タスク | 概要                   | 開始時刻 | 終了時刻 |')
for key in json:
    check = '[]'
    if key['complete'] is True:
        check = '[x]'
    else:
        check = '[ ]'
    print('{0} - {1}'.format(check, key['title']))
endpython3
endfunction

function! SpeedMemo()
python3 << endpython3
print("memo...")
endpython3
endfunction

function! SpeedDiary()
python3 << endpython3
print("diary...")
endpython3
endfunction

command! SpeedTodo :call Go#SpeedTodo()
