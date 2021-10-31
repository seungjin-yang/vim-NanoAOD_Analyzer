" VandyHEP/NanoAOD_Analyzer Configuration, Jet_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Smear
    \ Jet1
    \ Jet2
    \ CentralJet
    \ FirstLeadingJet
    \ SecondLeadingJet
    \ BJet

highlight default link blocks Todo

syntax keyword keys
    \ SmearTheJet
    \ GenMatchingDeltaR
    \ ResolutionMatching
    \ MuonMatchingDeltaR
    \ ModifiedPUsmearing
    \ ModifiedForwardSmearing
    \ CombinedModifiedSmearing
    \ EtaCut
    \ PtCut
    \ ApplyLooseID
    \ ApplyTightID
    \ ApplyTightLepVetoID
    \ ApplyPileupJetID
    \ PUJetIDCut
    \ FailPUJetID
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
    \ RemoveOverlapWithJs
    \ JMatchingDeltaR
    \ RemoveOverlapWithBs
    \ BJMatchingDeltaR
    \ Apply2017EEnoiseVeto
    \ DiscrByDPhiMet
    \ DPhiMetCut
    \ DoDiscrByThisJet
    \ ApplyJetBTaggingCSVv2
    \ ApplyJetBTaggingDeepCSV
    \ ApplyJetBTaggingDeepFlav
    \ JetBTaggingWP
    \ JetBTaggingCut
    \ MatchBToGen
    \ UseBtagSF
    \ RemoveBJetsFromJets

highlight default link keys Identifier
