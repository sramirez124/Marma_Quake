@echo off

cd\
cd C:\Users\srami\Documents\GitHub\quakemultiplayerlevel\working


echo Copying Files...
copy C:\Users\srami\Documents\GitHub\quakemultiplayerlevel\id1\maps\firstMap.map C:\Users\srami\Documents\GitHub\quakemultiplayerlevel\working


echo Converting map...


echo --------------QBSP--------------
C:\Users\srami\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools-v0.18.1-win64\bin\qbsp.exe firstMap

echo --------------VIS---------------
C:\Users\srami\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools-v0.18.1-win64\bin\vis.exe firstMap

echo -------------LIGHT--------------
C:\Users\srami\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools-v0.18.1-win64\bin\light.exe firstMap

copy firstMap.bsp C:\Users\srami\Documents\GitHub\quakemultiplayerlevel\id1\maps
copy firstMap.pts C:\Users\srami\Documents\GitHub\quakemultiplayerlevel\id1\maps
copy firstMap.lit C:\Users\srami\Documents\GitHub\quakemultiplayerlevel\id1\maps
pause
cd\
cd C:\Users\srami\Documents\GitHub\quakemultiplayerlevel
quakespasm  +map firstMap
