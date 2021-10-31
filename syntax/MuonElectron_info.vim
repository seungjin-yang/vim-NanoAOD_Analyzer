" VandyHEP/NanoAOD_Analyzer Configuration, MuonElectron_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Muon1Electron1
    \ Muon1Electron2
    \ Muon2Electron1
    \ Muon2Electron2

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
    \ DiscrByCosDphiPtAndMet
    \ CosDphiPtAndMetCut
    \ DiscrByCosDphiLeadPtAndMet
    \ CosDphiLeadPtAndMetCut
    \ DiscrByAbsCosDphiLeadPtandMet
    \ AbsCosDphiLeadPtAndMetCut
    \ DiscrByMtLeadPtAndMet
    \ MtLeadPtAndMetCut
    \ DiscrByDiLepMassDeltaPt
    \ DiLeadMassDeltaPtCut

highlight default link keys Identifier
