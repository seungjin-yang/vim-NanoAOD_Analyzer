" VandyHEP/NanoAOD_Analyzer Configuration, Cuts.in
" Maintainer: Seungjin Yang
" Version: 0.1

let syntax_dir = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
exec 'source' syntax_dir . '/NanoAOD_Analyzer.vim'

syntax keyword keys
    \ NGenHadW
    \ NGenTop
    \ NGenElectron
    \ NGenMuon
    \ NGenZ
    \ NGenW
    \ NGenHiggs
    \ NGenTau
    \ NRecoVertex
    \ NRecoTriggers1
    \ METCut
    \ NRecoMuon1
    \ NRecoTau1
    \ NRecoElectron1
    \ NRecoBJet
    \ NRecoJet1
    \ NRecoJet2
    \ NDiJetCombinations
    \ NRecoMuon2
    \ NRecoTau2
    \ NRecoElectron2
    \ NRecoPhoton1
    \ NRecoPhoton2
    \ NMuon1Tau1Combinations
    \ NRecoCentralJet
    \ NRecoTriggers2
    \ NRecoSecondLeadingJet
    \ NDiElectronCombinations
    \ NDiMuonCombinations
    \ NRecoFirstLeadingJet
    \ NLeadJetCombinations
    \ NMuon1Tau2Combinations
    \ NMuon2Tau1Combinations
    \ NMuon2Tau2Combinations
    \ NElectron1Tau1Combinations
    \ NElectron1Tau2Combinations
    \ NElectron2Tau1Combinations
    \ NElectron2Tau2Combinations
    \ NMuon1Electron1Combinations
    \ NMuon1Electron2Combinations
    \ NMuon2Electron1Combinations
    \ NMuon2Electron2Combinations

highlight default link keys Identifier
