" VandyHEP/NanoAOD_Analyzer Configuration, Run_info.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword blocks
    \ Run

highlight default link blocks Todo

syntax keyword keys
    \ CalculatePUSystematics
    \ DataHistos
    \ MCHistos
    \ DataPUHistName
    \ MCPUHistName
    \ SpecialMCPUCalculation
    \ SpecialMCPUHistos
    \ ApplyTauIDSF
    \ TauIdSFsByDM
    \ TauSFforEmbeddedSamples
    \ ApplyTauAntiEleSF
    \ ApplyTauAntiMuSF
    \ UsePileUpWeight
    \ ApplyNPVWeight
    \ ApplyISRZBoostSF
    \ ApplySUSYZBoostSF
    \ ApplyVBFSusyZBoostSF
    \ isData
    \ ApplyGenWeight
    \ ApplyL1PrefiringWeight
    \ ApplyHEMVeto2018
    \ FilterDataByGoldenJSON
    \ ApplyEEnoiseVeto2017EF
    \ DiscrByGenHT
    \ LowerGenHtCut
    \ UpperGenHtCut
    \ DiscrByGenDileptonMass
    \ GenDilepMassRange
    \ Trigger1FirstRequirement
    \ Trigger1SecondRequirement
    \ UseTriggerWildcard
    \ TreatMuonsAsNeutrinos
    \ TreatOnlyOneMuonAsNeutrino
    \ TreatMuonsAsTaus
    \ ApplyMetFilters
    \ ApplyMETxyShiftCorrections
    \ MT2Mass
    \ DiscrByMet
    \ MetCut
    \ DiscrByMHT
    \ MhtCut
    \ DiscrByHT
    \ HtCut
    \ JetPtForMhtAndHt
    \ JetEtaForMhtAndHt
    \ ApplyJetLooseIDforMhtAndHt
    \ ApplyJetTightIDforMhtAndHt

highlight default link keys Identifier
