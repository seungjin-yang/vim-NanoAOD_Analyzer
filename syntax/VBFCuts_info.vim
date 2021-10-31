" VandyHEP/NanoAOD_Analyzer Configuration, VBFCuts_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ VBFSUSY

highlight default link blocks Todo

syntax keyword keys
    \ DiscrByMass
    \ MassCut
    \ DiscrByPt
    \ PtCut
    \ DiscrByDeltaEta
    \ DeltaEtaCut
    \ DiscrByDeltaPhi
    \ DeltaPhiCut
    \ DiscrByOSEta
    \ DiscrByR1
    \ R1Cut
    \ DiscrByR2
    \ R2Cut
    \ DiscrByAlpha
    \ AlphaCut
    \ DiscrByDphi1
    \ Dphi1Cut
    \ DiscrByDphi2
    \ Dphi2Cut

highlight default link keys Identifier
