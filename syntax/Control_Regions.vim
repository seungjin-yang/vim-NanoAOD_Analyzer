" VandyHEP/NanoAOD_Analyzer Configuration, Control_Regions.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Control_Region

highlight default link blocks Todo

syntax keyword keys
    \ LeadingJet_Pass
    \ Run_Met
    \ Muon1Muon2_PassBoth
    \ SR
    \ Unblind

highlight default link keys Identifier
