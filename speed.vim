
let g:kbk#speed_base_path = base_path . "speed"

"py3file ~/Develop/kubocker/speed/app.py


function! SpeedTodo()
python3 << endpython3
import vim
import datetime
d = datetime.datetime.today()
print("{0}-{1}-{2}: todo is...".format(d.year, d.month, d.day))
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
