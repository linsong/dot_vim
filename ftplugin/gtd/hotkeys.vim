" hotkeys.vim -- hotkeys defination for gtd
" @Author:      Vincent Wang (mailto:linsong.qizi@gmail.com)
" @Website:     <+WWW+>
" @License:     GPL (see http://www.gnu.org/licenses/gpl.txt)
" @Created:     2007-09-19.
" @Last Change: 19-Mai-2005.
" @Revision:    0.0

if &cp || exists("b:loaded_hotkeys")
    finish
endif
let b:loaded_hotkeys = 1

setlocal makeprg=~/tools/gtd
nmap <buffer> <F5> :make<CR>

nmap <buffer> <C-D> :norm ^cEC=100<CR>

setlocal foldmethod=marker
setlocal ts=2
setlocal sw=2
setlocal expandtab
