" VandyHEP/NanoAOD_Analyzer Configuration, Photon_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Smear
    \ Photon1
    \ Photon2

highlight default link blocks Todo

syntax keyword keys
    \ SmearTheParticle
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
    \ UseMotherID
    \ MotherID
    \ doEfficiencyPlots
    \ EtaCut
    \ PtCut
    \ DoDiscrByIsolation
    \ IsoSumPtCutValue
    \ DoDiscrByCBID
    \ DiscrByCBID
    \ DiscrBymvaWP80
    \ DiscrBymvaWP90
    \ DoDiscrByElectronVeto
    \ DoDiscrByPixelSeedVeto
    \ DiscrByMetDphi
    \ MetDphiCut
    \ DiscrByMetMt
    \ MetMtCut

highlight default link keys Identifier
