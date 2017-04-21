
"py3file <sfile>:h:h/userautoload/src/cal.py
py3file <sfile>:h:h/src/cal.py

function! Cal(year, ...)
    if a:0 == 0 || a:0 > 3
        echo "args are uncomplete"
        return
    endif
" ------------ // python -------------
"
python3 << endpython3
import vim
year = vim.eval("a:year")
months = vim.eval("a:000")
calendar_list(year, months)
endpython3
" ------------ python // -------------

endfunction
