" VandyHEP/NanoAOD_Analyzer Configuration, Muon_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Smear
    \ Muon1
    \ Muon2

highlight default link blocks Todo

syntax keyword keys
    \ SmearTheParticle
    \ PtScaleOffset
    \ PtResolutionOffset
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
    \ DoDiscrBySoftID
    \ DoDiscrByLooseID
    \ DoDiscrByMediumID
    \ DoDiscrByTightID
    \ DoDiscrByIsolation
    \ IsoSumPtCutValue
    \ DiscrIfIsZdecay
    \ DiscrByMetDphi
    \ MetDphiCut
    \ DiscrByMetMt
    \ MetMtCut

highlight default link keys Identifier
