#!/bin/bash

VERSION=1
ARCHIVEDIR=dark-dzb

mkdir -p build
rm -rf build/*
cd build

mkdir ${ARCHIVEDIR}

cp ../*.plymouth ${ARCHIVEDIR}
cp ../*.script ${ARCHIVEDIR}
cp ../*.png ${ARCHIVEDIR}
cp ../*.sh ${ARCHIVEDIR}
cp ../README* ${ARCHIVEDIR}
cp ../LICENSE* ${ARCHIVEDIR}
cp ../INSTALL* ${ARCHIVEDIR}
cp -r ../dialog/ ${ARCHIVEDIR}

rm -f ${ARCHIVEDIR}/package.sh

tar cvzf dark-dzb-plymouth-theme_v${VERSION}.tar.gz ${ARCHIVEDIR}/

rm -rf ${ARCHIVEDIR}
