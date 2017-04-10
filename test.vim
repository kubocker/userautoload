function! Foo()
    echo "fpp"
python3 << endpython3
print("ssss")
import vim
class test(object):
    def __init__(self):
        print("init love")

    def love(self):
        print("youtube lover")

t = test()
t.love()
endpython3
endfunction


py3file <sfile>:h:h/userautoload/src/hello.py


function! Go(type)
    echo "loading..."
    let l:type=a:type
python3 << endpython3
import django
import sys
import vim

print(django.get_version())
var = vim.eval("l:type")
print("calling ui - " + var)
go = GoRiver()
go.position()
print(go.x)
print(go.y)
print(go.goal())
endpython3
endfunction

command! -nargs=* Go :call Go(<f-args>)
