" Move me to your own fptlugin/_common and config your personal information.
"
" Here is the place to set personal preferences; "priority=personal" is the
" highest which overrides any other XPTvar setting.
"
" You can also set personal variables with 'g:xptemplate_vars' in your .vimrc.
XPTemplate priority=personal


" XPTvar $author       you have not yet set $author variable
" XPTvar $email        you have not yet set $email variable

XPT yoursnippet " tips here
bla bla

" containers
let s:f = g:XPTfuncs()

" ========================= Function and Variables =============================

" added by vincent 2013/10/18 {{{
fun! s:f.Capitalize( v )
  return substitute(a:v, '^.', '\u&', '')
endfunction

fun! s:f.CamelCase(...)
  let str = a:0 == 0 ? self.V() : a:1
  let r = substitute(substitute(str, "[\/ _]", ' ', 'g'), '\<.', '\u&', 'g')
  return substitute(r, " ", '', 'g')
endfunction
" added by vincent }}}
