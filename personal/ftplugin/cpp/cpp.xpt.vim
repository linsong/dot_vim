XPTemplate priority=personal+

" inclusion
XPTinclude
      \ _common/common

XPTemplateDef

XPT del "delete point
if (`pointer^ != NULL) {
  delete `pointer^;
  `pointer^ = NULL;
}
`cursor^
..XPT

XPT templatefunc "define template function
template <typename T>
`rettype^ `funcname^(`T^)
{
    `cursor^
}
..XPT

XPT {{ hint={\ function\ body\ }
{
    `cursor^
}

..XPT
