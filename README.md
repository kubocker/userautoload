# userautoload
##### original vim scripts putting on ~/.vim/userautoload

vim8  
python3  

## 1. install

#### brew packages
```bash
$ brew install vim --with-python3 --with-lua
$ brew install python3
$ pip install pip-tools
$ pip-compile requirements.in
```
or

#### git clone
```bash
$
```

## 2. set
set .vimrc
```
set runtimepath+=~/.vim/
runtime! <your path>/*.vim
```

## 3. make vim-app
set vim-apps
```bash
$ cd userautoload
$ python manage.py --name <startapp_name>
```

# Vim CommandLine Sample

## 1. My Project "speed"

#### Todo
> Get (List)  
:Go todo list 2017  
:Go todo list 2017-03  
:Go todo list 2017-04-13  
:Go todo list today  
:Go todo list tomorrow  
:Go todo list yesterday  

> Post (Add)  
:Go todo add "テストテストテスト" today True  
:Go todo add "テストテストテスト" tomorrow False  
:Go todo add "追加追加...." 2017-04-13 False  


#### Memo


#### Diary

> Get (List)  
:Go diary list 2017  
:Go diary list 2017-03  
:Go diary list 2017-04-12  
:Go diary list today 
:Go diary list tomorrow  

> Post (Add)  
:Go diary add "今日はあんまり集中してできなかった" today  
:Go diary add " "  


## 2. My Project "cute.py"
