@echo off

cd\
cd D:\quake-leveldesign-starterkit-1.10.0\working


echo Copying Files...
copy D:\quake-leveldesign-starterkit-1.10.0\id1\maps\firstMap.map D:\quake-leveldesign-starterkit-1.10.0\working


echo Converting map...


echo --------------QBSP--------------
D:\quake-leveldesign-starterkit-1.10.0\tools\ericw-tools\bin\qbsp.exe firstMap

echo --------------VIS---------------
D:\quake-leveldesign-starterkit-1.10.0\tools\ericw-tools\bin\vis.exe firstMap

echo -------------LIGHT--------------
D:\quake-leveldesign-starterkit-1.10.0\tools\ericw-tools\bin\light.exe firstMap

copy firstMap.bsp D:\quake-leveldesign-starterkit-1.10.0\id1\maps
copy firstMap.pts D:\quake-leveldesign-starterkit-1.10.0\id1\maps
copy firstMap.lit D:\quake-leveldesign-starterkit-1.10.0\id1\maps
pause
cd\
cd D:\quake-leveldesign-starterkit-1.10.0
quakespasm  +map firstMap
