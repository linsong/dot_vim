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
