" VandyHEP/NanoAOD_Analyzer Configuration, FatJet_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Smear
    \ Wjet

highlight default link blocks Todo

syntax keyword keys
    \ SmearTheJet
    \ JetEnergyScaleOffset
    \ MuonMatchingDeltaR
    \ ElectronMatchingDeltaR
    \ TauMatchingDeltaR
    \ EtaCut
    \ PtCut
    \ RemoveOverlapWithMuon1s
    \ RemoveOverlapWithMuon2s
    \ Muon1MatchingDeltaR
    \ Muon2MatchingDeltaR
    \ RemoveOverlapWithElectron1s
    \ RemoveOverlapWithElectron2s
    \ Electron1MatchingDeltaR
    \ Electron2MatchingDeltaR
    \ RemoveOverlapWithTau1s
    \ RemoveOverlapWithTau2s
    \ Tau1MatchingDeltaR
    \ Tau2MatchingDeltaR
    \ ApplyJetWTagging
    \ JetWmassCut
    \ JetTau2Tau1Ratio

highlight default link keys Identifier
