let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd /hdd/Projects/PythonTemplate
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +15 /hdd/Projects/PythonTemplate/main.py
badd +3 /hdd/Projects/PythonTemplate/requirements.txt
badd +9 /hdd/Projects/PythonTemplate/test_main.py
badd +16 /hdd/Projects/PythonTemplate/.pre-commit-config.yaml
badd +1 /hdd/Projects/PythonTemplate/README.md
badd +1 /hdd/Projects/PythonTemplate/.flake8
badd +127 /hdd/Projects/PythonTemplate/.gitignore
badd +1 /hdd/Projects/PythonTemplate/.dockerignore
badd +10 /hdd/Projects/PythonTemplate/Dockerfile
badd +7 /hdd/Projects/PythonTemplate/docker-compose.yaml
argglobal
%argdel
edit /hdd/Projects/PythonTemplate/docker-compose.yaml
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 30 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 30 + 105) / 210)
exe '2resize ' . ((&lines * 30 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 179 + 105) / 210)
exe '3resize ' . ((&lines * 12 + 23) / 46)
argglobal
enew
file NvimTree_1
balt /hdd/Projects/PythonTemplate/main.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
balt /hdd/Projects/PythonTemplate/Dockerfile
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 7 - ((6 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 012|
wincmd w
argglobal
if bufexists(fnamemodify("term:///hdd/Projects/PythonTemplate//19218:/bin/bash;\#toggleterm\#1", ":p")) | buffer term:///hdd/Projects/PythonTemplate//19218:/bin/bash;\#toggleterm\#1 | else | edit term:///hdd/Projects/PythonTemplate//19218:/bin/bash;\#toggleterm\#1 | endif
if &buftype ==# 'terminal'
  silent file term:///hdd/Projects/PythonTemplate//19218:/bin/bash;\#toggleterm\#1
endif
balt /hdd/Projects/PythonTemplate/main.py
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1093 - ((9 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1093
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 30 + 23) / 46)
exe 'vert 1resize ' . ((&columns * 30 + 105) / 210)
exe '2resize ' . ((&lines * 30 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 179 + 105) / 210)
exe '3resize ' . ((&lines * 12 + 23) / 46)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
