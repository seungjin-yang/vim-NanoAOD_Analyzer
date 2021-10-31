#!/bin/sh
rm -rf ../ftdetect ../syntax
if [ -d ./NanoAOD_Analyzer ]
then
    rm -rf ./NanoAOD_Analyzer
fi

git clone https://github.com/VandyHEP/NanoAOD_Analyzer.git

./generate.py -i NanoAOD_Analyzer/PartDet -o ..
