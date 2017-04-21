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


let res = webapi#http#get('http://127.0.0.1:8000/youtube/artist/')
"let res = webapi#http#post('http://127.0.0.1:8000/youtube/artist/', {'name': 'マンコ大好き結成隊', 'foundation_date': '2016-03-13', 'member': 3})
let content = webapi#json#decode(res.content)
echo content

echo "speed.vim"

function! s:escarg(s)
  return escape(substitute(a:s, '\\', '/', 'g'), ' ')
endfunction


let g:todolist_path = "~/Develop/practice"
let g:todolist_path = expand(g:todolist_path, ':p')
if !isdirectory(g:todolist_path)
  call mkdir(g:todolist_path, 'p')
endif

"py3file <sfile>:h:h/userautoload/src/hello.py


"function! Go(type)
"    echo "loading..."
"    let l:type=a:type
"python3 << endpython3
"import django
"import PyQt5
"import sys
"import vim
"
"print("django version is: {0}".format(django.get_version()))
"var = vim.eval("l:type")
"print("calling ui - " + var)
"endpython3
"endfunction
"
"command! -nargs=* Go :call Go(<f-args>)




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

function! File()
echo line('.')
let l:todo = line('.')
python3 << endpython3
import vim
#f = open("src/hello.py", "r")
#for l in f:
#    print(l)
#f.close()
#line = f.readline()
#while line:
#    line = f.readline()
#    print(line)
print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
print(vim.eval("l:todo"))
print("bbbbbbbbbbbbbbbbbbbbbbbbbbbbb")
f = "src/hello.py"
line = vim.eval("l:todo")
test_dict = [
    {"title": "テスト1テスト1テスト1", "file": "src/hello.py" },
    {"title": "テスト2テスト2テスト2", "file": "src/todo.py" },
    {"title": "テスト3テスト3テスト3", "file": "src/memo.py" },
    {"title": "テスト3テスト3テスト3", "file": "src/diary.py" },

]
#1print(line)
#1print(test_dict[1])
test = int(line)
print(test)
#print(test_dict[line])
print(test_dict[test-1]["file"])
vim.command("vsp {0}".format(test_dict[test-1]["file"]))
#vim.command("gf {0}".format(test_dict[test-1]["file"]))
#print(f)
endpython3
endfunction

function! File2()
python3 << endpython3
import calendar
import datetime
import vim

d = datetime.datetime.today()
print(d.year)
print(d.month)
print(calendar.month(d.year, d.month-1))
print(calendar.month(d.year, d.month))
print(calendar.month(d.year, d.month+1))
#text = input("what days are you want sex??: ")
#print(text)
endpython3
endfunction


command! Todo :call Todo()
command! Test :call File()
command! Test2 :call File2()





function! TestFunc(hoge, hoge2, hoge3)
    echo a:hoge
    echo a:hoge2
    echo a:hoge3
endfunction

function! s:Youtuber(hoge, hoge2, hoge3)
    for var in [a:hoge, a:hoge2, a:hoge3]
        echo var
    endfor
endfunction

function! You(hoge, hoge2, hoge3)
    for var in [a:hoge, a:hoge2, a:hoge3]
        echo var
    endfor
endfunction

function! TestTest(...)
    call TestFunc(a:1, a:2, a:3)
endfunction

function! TestTest2(func, ...)
    "call func(a:1, a:2, a:3)
    return call(a:func, a:000)
endfunction

function! TestTest3(func, ...)
    "return call(a:func, a:0, a:1, a:2)
    return call(a:func, a:000)
endfunction

"call TestTest('ne', 'nene', 'nenene')
"call s:Youtuber('takeshi', 'ayaka', 'hikaru')
call TestTest2('s:Youtuber', 'test', 'test2', 'test3')
"call TestTest3('You', 'he', 'hehe', 'hehehe')
call TestTest3(function('You'), 'he', 'hehe', 'hehehe')

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
