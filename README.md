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
