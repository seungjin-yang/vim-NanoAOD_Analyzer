" VandyHEP/NanoAOD_Analyzer Configuration, Gen_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Gen

highlight default link blocks Todo

syntax keyword keys
    \ DiscrTauByPtAndEta
    \ TauPtCut
    \ TauEtaCut
    \ DiscrTauByMotherID
    \ TauMotherIDs
    \ DiscrTauByNotFromPileup
    \ DiscrElecByPtAndEta
    \ ElecPtCut
    \ ElecEtaCut
    \ DiscrElecByMotherID
    \ ElecMotherIDs
    \ DiscrElecByNotFromPileup
    \ DiscrMuonByPtAndEta
    \ MuonPtCut
    \ MuonEtaCut
    \ DiscrMuonByMotherID
    \ MuonMotherIDs
    \ DiscrMuonByNotFromPileup
    \ DiscrHadTauByPtAndEta
    \ HadTauPtCut
    \ HadTauEtaCut
    \ DiscrByTauDecayMode
    \ TauDecayModes
    \ DiscrHadTauByMotherID
    \ HadTauMotherIDs
    \ DiscrJetByPtandEta
    \ JetPtCut
    \ JetEtaCut
    \ DiscrByPartonFlavor
    \ PartonFlavorRange
    \ DiscrBJetByPtandEta
    \ BJetPtCut
    \ BJetEtaCut

highlight default link keys Identifier
