#!/bin/bash

PURESCRIPT_TAG=v0.12.0
PSC_PACKAGE_TAG=v0.3.2
DHALL_TAG=1.17.0
DHALL_JSON_TAG=1.2.3
SPACCHETTI_TAG=0.2.0.0

PURESCRIPT=https://github.com/purescript/purescript/releases/download/$PURESCRIPT_TAG/linux64.tar.gz
PSC_PACKAGE=https://github.com/purescript/psc-package/releases/download/$PSC_PACKAGE_TAG/linux64.tar.gz
DHALL=https://github.com/dhall-lang/dhall-haskell/releases/download/$DHALL_TAG/dhall-1.17.0-x86_64-linux.tar.bz2
DHALL_JSON=https://github.com/dhall-lang/dhall-json/releases/download/$DHALL_JSON_TAG/dhall-json-1.2.3-x86_64-linux.tar.bz2
SPACCHETTI=https://github.com/justinwoo/spacchetti-cli/releases/download/$SPACCHETTI_TAG/linux.tar.gz

wget -O purescript.tar.gz $PURESCRIPT
wget -O psc-package.tar.gz $PSC_PACKAGE
wget -O dhall.tar.gz $DHALL
wget -O dhall-json.tar.gz $DHALL_JSON
wget -O spacchetti.tar.gz $SPACCHETTI

tar -xvf dhall.tar.gz -C .
tar -xvf dhall-json.tar.gz -C .
tar -xvf psc-package.tar.gz -C .
tar -xvf purescript.tar.gz -C .
tar -xvf spacchetti.tar.gz -C bin

mv purescript/* bin
mv psc-package/* bin

chmod a+x bin

tar -zcvf bundle.tar.gz bin
