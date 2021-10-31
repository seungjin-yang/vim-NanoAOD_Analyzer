" VandyHEP/NanoAOD_Analyzer Configuration, DiParticle_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ DiTau
    \ DiMuon
    \ DiElectron
    \ DiPhoton
    \ DiJet

highlight default link blocks Todo

syntax keyword keys
    \ DiscrByDeltaR
    \ DeltaRCut
    \ DiscrByOSLSType
    \ DiscrByCosDphi
    \ CosDphiCut
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
    \ DiscrByDeltaEta
    \ DeltaEtaCut
    \ DiscrByDeltaPhi
    \ DeltaPhiCut
    \ DiscrByOSEta
    \ RejectForwardDiJetPairs
    \ ForwardEtaRange

highlight default link keys Identifier
