" VandyHEP/NanoAOD_Analyzer Configuration, Tau_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Smear
    \ TauID
    \ Tau1
    \ Tau2

highlight default link blocks Todo

syntax keyword keys
    \ SmearTheParticle
    \ ApplyETauFakeRateESSF
    \ PtScaleOffset
    \ PtSigmaOffset
    \ EtaScaleOffset
    \ EtaSigmaOffset
    \ PhiScaleOffset
    \ PhiSigmaOffset
    \ EnergyScaleOffset
    \ EnergySigmaOffset
    \ MatchToGen
    \ GenMatchingDeltaR
    \ TauSF
    \ doEfficiencyPlots
    \ TauIDAlgorithm
    \ EtaCut
    \ PtCut
    \ DoDzCut
    \ DzCutThreshold
    \ DoDiscrByLeadTrack
    \ LeadTrackThreshold
    \ DoDiscrByIsolation
    \ DiscrByMinIsolation
    \ DiscrByMaxIsolation
    \ FlipIsolationRequirement
    \ DiscrByProngType
    \ ProngType
    \ decayModeFindingNewDMs
    \ decayModeFinding
    \ DoDiscrAgainstElectron
    \ DiscrAgainstElectron
    \ SelectTausThatAreElectrons
    \ DoDiscrAgainstMuon
    \ DiscrAgainstMuon
    \ SelectTausThatAreMuons
    \ DoDiscrByCrackCut
    \ RemoveOverlapWithMuon1s
    \ RemoveOverlapWithMuon2s
    \ Muon1MatchingDeltaR
    \ Muon2MatchingDeltaR
    \ RemoveOverlapWithElectron1s
    \ RemoveOverlapWithElectron2s
    \ Electron1MatchingDeltaR
    \ Electron2MatchingDeltaR
    \ DiscrByMetDphi
    \ MetDphiCut
    \ DiscrByMetMt
    \ MetMtCut
    \ DiscrByGenMatchingStatus
    \ GenMatchingStatusRange

highlight default link keys Identifier
