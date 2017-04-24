

py3file <sfile>:h:h/src/speed.py

let g:type_list = ["todo", "memo", "diary"]



" ========== Todo ========== "
function! SpeedTodo(...)
"
" ------------ // python -------------
python3 << endpython3
import vim
import Todo

year  = vim.eval("a:1")
month = vim.eval("a:2")
day   = vim.eval("a:3")

todo = Todo(year, month, day)
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
            call Go#SpeedUp(a:type, a:param, a:000)
        endif
    endfor
python3 << endpython3

endpython3
endfunction
