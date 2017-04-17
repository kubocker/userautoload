
let g:kbk#speed_base_path = base_path . "speed"

"py3file ~/Develop/kubocker/speed/app.py
py3file <sfile>:h:h/userautoload/src/speed.py

let g:type_list = ["todo", "memo", "diary"]
let g:speed_url = "http://127.0.0.1:8000/"


" ---------- Todo ---------- "
"function! SpeedTodo(type, request, date)
function! SpeedTodo(...)
    "let l:type=a:type
    "let l:json=a:request
    "let l:date=a:date

    "let l:param=g:request_param
    let l:url=g:speed_url

python3 << endpython3
import vim
import datetime
import time
#test = vim.eval("l:type")
#json = vim.eval("l:json")
#date = vim.eval("l:date")
url = vim.eval("l:url")
todo = Todo()
todo.url = url
print(todo.url)
#todo.request(test)
todo.request("todo")
todo.set_path("title")
todo.get_json("todo", todo.path)
print(todo.json)
#todo.get_list(date)
todo.get_list("")
d = datetime.datetime.today()
d2 = datetime.datetime.today() + datetime.timedelta(days=1)
d3 = datetime.datetime.today() - datetime.timedelta(days=1)
print("{0}-{1}-{2}: todo is...".format(d.year, d.month, d.day))
print("{0}-{1}-{2}: tomorrow is...".format(d2.year, d2.month, d2.day))
print("{0}-{1}-{2}: yesterday is...".format(d3.year, d3.month, d3.day))
print('タスク | 概要                   | 開始時刻 | 終了時刻 |')
for key in todo.json:
    time.sleep(0.2)
    check = '[x]' if key['complete'] else '[ ]'
    if key['complete'] == True:
        print('{0} - {1}'.format(check, key['title']))
endpython3
endfunction

" ---------- Memo ---------- "
function! SpeedMemo(...)
python3 << endpython3
print("memo...")
endpython3
endfunction

" ---------- Diary ---------- "
function! SpeedDiary(...)
python3 << endpython3
print("diary...")
endpython3
endfunction


" ---------- SpeedUP ---------- "
function! SpeedUp(type, request, ...)
    if a:type == "todo"
        "call SpeedTodo(a:1, a:2, a:3)
        call SpeedTodo(a:request, a:000)
    elseif a:type == "memo"
        "call SpeedMemo(a:000)
        call SpeedMemo(a:000)
    else
        "call SpeedDiary(a:1, a:2, a:3)
        call SpeedDiary(a:requst, a:000)
    endif
endfunction

" ---------- Go Command ---------- "
function! Go(type, param, ...)
"function! Go(...)

    let l:type=a:type
    let l:param=a:param
    let l:list=g:type_list
    let s:help="--help"
    "if a:type == s:help
    "    echo 'ヘルプ画面へ....'
    "    return
    "endif
    for item in list
        if l:type == item
            call SpeedUp(a:type, a:param, a:000)
        endif
    endfor
python3 << endpython3

endpython3
endfunction

command! -nargs=* Go : call Go(<f-args>)

