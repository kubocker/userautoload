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


"py3file <sfile>:h:h/userautoload/src/hello.py


function! Go(type)
    echo "loading..."
    let l:type=a:type
python3 << endpython3
import django
import PyQt5
import sys
import vim

print("django version is: {0}".format(django.get_version()))
var = vim.eval("l:type")
print("calling ui - " + var)
endpython3
endfunction

command! -nargs=* Go :call Go(<f-args>)




function! Todo()
    echo "loading..."
python3 << endpython3
import requests
response = requests.get(
    "http://127.0.0.1:8000/todo/title/",
    params={})
json = response.json()
date = json[0]['date']
title = json[0]['title']
for key in json:
    print(key["title"])
endpython3
endfunction


command! Todo :call Todo()



function! s:apply(func, ...)
    return call(a:func, a:000)
endfunction


function! s:print(...)
    for var in a:000
        echo var
    endfor
endfunction


function! s:sum(...)
    let l:sum = 0
    for var in a:000
        let l:sum += var
    endfor
    return l:sum
endfunction

call s:apply("s:print", 0, "hoge", "youtube")
call s:apply("s:sum", 2, 3, 6, 1)
