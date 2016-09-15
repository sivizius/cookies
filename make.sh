#!/bin/bash

echo "#!sba:log"                                              >         "../build/out/cookies.log"
echo '#a=_sivizius'                                           >>        "../build/out/cookies.log"
echo '#b=ascii\\n'                                            >>        "../build/out/cookies.log"
echo '#c=2016-02-10_17:21:05_UTC+0100'                        >>        "../build/out/cookies.log"
echo -n '#d='                                                 >>        "../build/out/cookies.log"
date "+%Y-%m-%d_%H:%M:%S"                                     >>        "../build/out/cookies.log"
echo '#f=/sba/out/cookies.log'                                >>        "../build/out/cookies.log"
echo '#l=bash/en'                                             >>        "../build/out/cookies.log"
echo '#p=/sba/doc/licenses/LICENCE.txt'                       >>        "../build/out/cookies.log"
echo '#t=logfile for cookies'                                 >>        "../build/out/cookies.log"
echo '#v=0.9.1.0-»Amanita muscaria«'                          >>        "../build/out/cookies.log"
../build/bin/fasm "cookies.fasm" "../build/lib/cookies"       | tee -a  "../build/out/cookies.log"

echo "== Hex it? =="                                          | tee -a  "../build/out/cookies.log"
  read -p "" yn
  case "$yn" in
    ""|y|Y|j|J|yes|Yes|ja|Ja)
      echo "== Binary -> Hex =="                              | tee -a  "../build/out/cookies.log"
      hexedit "../build/lib/cookies"
   ;;
  esac
