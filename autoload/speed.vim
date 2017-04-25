

py3file <sfile>:h:h/src/speed.py

let g:type_list = ["todo", "memo", "diary"]

let g:option_list = ["list", "add", "remove", "update", "all"]

let g:speed_todo_path  = "Develop/kubocker/work/todo/"
let g:speed_memo_path  = "Develop/kubocker/work/memo/"
let g:speed_diary_path = "Develop/kubocker/work/diary/"


" ========== Todo ========== "
function! SpeedTodo(...)
":Go todo list
":Go todo list today
":Go todo list 2017 4
let l:path = $HOME . '/' . g:speed_todo_path
" ------------ // python -------------
python3 << endpython3
import vim
import datetime

option = vim.eval("a:1")
lists  = vim.eval("a:2")[0]

today = datetime.datetime.today()
PATH = vim.eval("l:path")
t = None
# 
if len(lists) == 0:
    t = Todo(today.year, today.month, today.day)
elif len(lists) == 1:
    if lists[0] == "today":
        t = Todo(today.year, today.month, today.day)
    elif lists[0] == "yesterday":
        t = Todo(today.year, today.month, today.day-1)
    elif lists[0] == "tomorrow":
        t = Todo(today.year, today.month, today.day+1)
elif len(lists) == 2:
    pass
elif len(lists) == 3 or len(lists) == 4:
    t = Todo(int(lists[0]), int(lists[1]), int(lists[2]))

#
if option == "list":
    t.list()
elif option == "add":
    t.add(lists[3], False)
elif option == "all":
    t.all()

endpython3
" ------------ python // -------------
"
endfunction

" ========== Memo ========== "
function! SpeedMemo(...)
"
" ------------ // python -------------
python3 << endpython3
print("memo...")
endpython3
" ------------ python // -------------
"
endfunction

" ========== Diary ========== "
function! SpeedDiary(...)
"
" ------------ // python -------------
python3 << endpython3
print("diary...")
endpython3
" ------------ python // -------------
"
endfunction


" ---------- SpeedUP ---------- "
function! SpeedUp(type, request, ...)
    if a:type == "todo"
        call SpeedTodo(a:request, a:000)
    elseif a:type == "memo"
        call SpeedMemo(a:000)
    else
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
