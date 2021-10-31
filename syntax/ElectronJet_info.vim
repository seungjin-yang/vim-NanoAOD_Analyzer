" VandyHEP/NanoAOD_Analyzer Configuration, ElectronJet_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Electron1Jet1
    \ Electron1Jet2
    \ Electron2Jet1
    \ Electron2Jet2

highlight default link blocks Todo

syntax keyword keys
    \ DiscrByDeltaR
    \ DeltaRCut
    \ DiscrByOSLSType
    \ DiscrByCosDphi
    \ CosDphiCut
    \ DiscrByCosDphi_DeltaPtAndMet
    \ CosDphi_DeltaPtMetCut
    \ DiscrByMassReco
    \ HowCalculateMassReco
    \ MassCut
    \ DiscrByCDFzeta2D
    \ PZetaCutCoefficient
    \ PZetaVisCutCoefficient
    \ CDFzeta2DCutValue
    \ DiscrByDeltaPtDivSumPt
    \ DeltaPtDivSumPtCutValue
    \ DiscrByDeltaPt
    \ DeltaPtCutValue

highlight default link keys Identifier
