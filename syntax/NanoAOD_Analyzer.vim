""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" numbers
syntax match NanoAODAnalyzerNumber "\v<\d+>"
syntax match NanoAODAnalyzerNumber "\v<\d+\.\d+>"
syntax match NanoAODAnalyzerNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match NanoAODAnalyzerNumber "\v<0x\x+([Pp]-?)?\x+>"
syntax match NanoAODAnalyzerNumber "\v<0b[01]+>"
syntax match NanoAODAnalyzerNumber "\v<0o\o+>"

highlight default link NanoAODAnalyzerNumber Number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" boolean
syntax match NanoAODAnalyzerTrue "\v<true>"
highlight default link NanoAODAnalyzerTrue Special

syntax match NanoAODAnalyzerFalse "\v<false>"
highlight default link NanoAODAnalyzerFalse Boolean


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" comment
syntax match NanoAODAnalyzerComment "#.*$" contains=NanoAODAnalyzerTodo
syntax match NanoAODAnalyzerComment "//.*$" contains=NanoAODAnalyzerTodo

highlight default link NanoAODAnalyzerComment Comment

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" todo
syntax keyword NanoAODAnalyzerTodo TODO contained
syntax keyword NanoAODAnalyzerTodo FIXME contained
syntax keyword NanoAODAnalyzerTodo NOTE contained
syntax keyword NanoAODAnalyzerTodo XXX contained

highlight default link NanoAODAnalyzerTodo Todo
