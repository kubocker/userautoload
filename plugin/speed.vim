" speed.vim
" Maintainer:  Takeshi Kubokawa <kubocker@gmail.com>
" Version:  0.0.1
"
if !exists('g:speed_todo_path')
    let g:speed_todo_path = $HOME . "/todo"
endif

command! -nargs=* Go : call Go(<f-args>)
