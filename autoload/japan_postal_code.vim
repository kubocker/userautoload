
py3file <sfile>:h:h/src/japan_postal_code.py

function! PostalCode(code)
"
" ------------ // python -------------
python3 << endpython3
import vim
code = vim.eval("a:code")
address = show_postal_code(code)
print(address)
endpython3
" ------------ python // -------------
"
endfunction
