" VandyHEP/NanoAOD_Analyzer Configuration, SignalMC_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ SignalMC

highlight default link blocks Todo

syntax keyword keys
    \ ModelTag
    \ C1_pdgID
    \ C1Mass
    \ N2_pdgID
    \ N2Mass
    \ N1_pdgID
    \ N1Mass
    \ Stau_pdgID
    \ StauMass

highlight default link keys Identifier
