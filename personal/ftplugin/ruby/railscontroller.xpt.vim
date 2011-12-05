XPTemplate priority=personal+

let s:f = g:XPTfuncs()

" use snippet 'varConst' to generate contant variables
" use snippet 'varFormat' to generate formatting variables
" use snippet 'varSpaces' to generate spacing variables

XPTinclude
    \ _common/common

XPTemplateDef

XPT benchmark_ wrap=wrapped " .. benchmark 
self.class.benchmark("`^") do 
    `wrapped^ 
end
..XPT

"snippet rt within the same controller
"redirect_to :action => "${1:index}"
"endsnippet
"
"snippet rt not within the same controller
"redirect_to :controller => "${1:items}", :action => "${2:index}"
"endsnippet
"
"snippet fl
"flash[:${1:notice}] = "${1}"${2}
"endsnippet
"
"snippet url
"url_for(:controller => :${1}, :action => :${2}${3:, :id => :${4}} )
"endsnippet
"
"snippet renderu
"render :update do |page|
"page.${1}
"end
"endsnippet
"
"snippet par
"params[:${1:id}]${2}
"endsnippet
"
"snippet ra
"render :action => "${1:action}"
"endsnippet
"
"snippet ral
"render :action => "${1:action}", :layout => "${2:layoutname}"
"endsnippet
"
"snippet rcea
"render_component :action => "${1:index}"
"endsnippet
"
"snippet rcec
"render_component :controller => "${1:items}"
"endsnippet
"
"snippet rceca
"render_component :controller => "${1:items}", :action => "${2:index}"
"endsnippet
"
"snippet rea
"redirect_to :action => "${1:index}"
"endsnippet
"
"snippet reai
"redirect_to :action => "${1:show}", :id => ${:@item}
"endsnippet
"
"snippet rec
"redirect_to :controller => "${1:items}"
"endsnippet
"
"snippet reca
"redirect_to :controller => "${1:items}", :action => "${2:list}"
"endsnippet
"
"snippet recai
"redirect_to :controller => "${1:items}", :action => "${2:show}", :id => ${3:@item}
"endsnippet
"
"snippet ses
"session[:${1:user}]${2}
"endsnippet
"
"snippet flsh
"flash[:${1:notice}] = "${2:Text here...}"
"endsnippet
