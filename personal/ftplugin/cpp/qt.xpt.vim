XPTemplate priority=personal+

" inclusion
XPTinclude
      \ _common/common

XPTemplateDef

XPT connect wrap=source " connect a signal to a slot
connect(`source^, SIGNAL(`signal_name^(`param1^`more1...^, `param2^`more1...^)), `this^, SLOT(`slot_name^(`param3^`more2...^, `param4^`more2...^)));
`cursor^

XPT QAction " create new QAction instance 
QAction(`icon^, `tr...{{^tr("`cursor^")`}}^, `this^);
`cursor^

XPT tr " create a tr string
tr("`^")`^

XPT #include " include a header 
#include <`QtGui^/`cursor^>
