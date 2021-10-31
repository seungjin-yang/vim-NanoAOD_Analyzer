" VandyHEP/NanoAOD_Analyzer Configuration, Systematics_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Systematics
    \ Muon_systematics
    \ Electron_systematics
    \ Tau_systematics
    \ Jet_systematics

highlight default link blocks Todo

syntax keyword keys
    \ useSystematics
    \ Tau_weight_Normal
    \ Tau_weight_Up
    \ Tau_weight_Down
    \ MetUncl_Up
    \ MetUncl_Down
    \ Jet_Res_Up
    \ Jet_Res_Down
    \ Jet_Scale_Up
    \ Jet_Scale_Down
    \ Electron_Res_Up
    \ Electron_Res_Down
    \ Electron_Scale_Up
    \ Electron_Scale_Down
    \ Muon_Res_Up
    \ Muon_Res_Down
    \ Muon_Scale_Up
    \ Muon_Scale_Down
    \ Btag_Up
    \ Btag_Down
    \ ISR_weight_up
    \ ISR_weight_down
    \ L1Prefiring_weight_Up
    \ L1Prefiring_weight_Down
    \ pt_min
    \ eta_max
    \ scale
    \ res
    \ jetResolutionFileUnmatched
    \ jetResolutionSFFile

highlight default link keys Identifier
