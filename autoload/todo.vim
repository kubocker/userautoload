
function! Todo(...)
" --------- // python ---------- "
python3 << endpython3
from tinydb import TinyDB, Query

file_path = "todo.json"
db = TinyDB(file_path)

#table = db.table('todos_2017_')
#
#table.insert({'title': ''})

endpython3
" --------- python // ---------- "
endfunction
