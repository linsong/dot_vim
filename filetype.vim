" my filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile psql.edit.* setfiletype sql
  " to make pasting sql query into editor of psql easier, turn on 'paste' by default
  au  BufRead,BufNewFile psql.edit.* set paste
  au! BufRead,BufNewFile *.lzx      setfiletype lzx

  "au! BufRead,BufNewFile nordictrac.dev.exoweb.net_*comment*.txt setfiletype txt
  au! BufRead,BufNewFile nordictrac.dev.exoweb.net_*text*.txt setfiletype exo-codereview
  au! BufRead,BufNewFile *.txt      setfiletype txt

  au! BufRead,BufNewFile *.mkd      setfiletype mkd
  au! BufRead,BufNewFile *.blogger  setfiletype blogger

  au! BufRead,BufNewFile *.viki  setfiletype viki

  au  BufRead,BufNewFile ipython_edit*.py set paste
  au  BufRead,BufNewFile svn-commit.tmp set paste
  "au  BufRead,BufNewFile mutt-vincent-* set paste

  au! BufRead,BufNewFile *.rest  setfiletype rest
  au! BufRead,BufNewFile *.vst  setfiletype rest

  au BufNewFile,BufRead *.moin setf moin
  au BufNewFile,BufRead *.wiki setf moin

  au BufNewFile,BufRead *.as setf actionscript
  au BufNewFile,BufRead *.mxml setf mxml
  au BufNewFile,BufRead *.mxml compiler flex 

  au BufNewFile,BufRead *.arff compiler arff

  au BufNewFile,BufRead *.blog setfiletype blog
  au BufNewFile,BufRead *.blog source $VIMCFG/manualload/blog.vim

  au BufNewFile,BufRead .tmux.conf* setfiletype tmux

  autocmd BufRead,BufNewFile *.wiki setfiletype Wikipedia
  autocmd BufRead,BufNewFile wiki.seravia.3322.org* setfiletype Wikipedia

  autocmd BufRead,BufNewFile Twitter_* setfiletype  twitter

  autocmd BufRead,BufNewFile *.otl set ts=2

  autocmd BufRead,BufNewFile *.rfc* setfiletype rfc
  autocmd BufRead,BufNewFile *.penta setfiletype pentadactyl

  autocmd BufNewFile,BufRead *.markdown setfiletype octopress.markdown

  autocmd BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

  au BufNewFile,BufRead *.sedona setf java

  au BufNewFile,BufRead *.gx setf xml
  au BufNewFile,BufRead *.gr setf xml
  au BufNewFile,BufRead *.grl setf xml
  au BufNewFile,BufRead *.cps setf xml
  au BufRead *.gr :normal V=
  au BufRead *.gx :normal V=
  au BufRead *.grl :normal V=
  au BufRead *.cps :normal V=

  augroup tracwiki 
    au! BufRead,BufNewFile *.tracwiki   setfiletype tracwiki 
  augroup END 

augroup END
