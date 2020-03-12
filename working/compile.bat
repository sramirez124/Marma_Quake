@echo off

cd\
cd C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\working


echo Copying Files...
copy C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps\marma.map C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\working


echo Converting map...


echo --------------QBSP--------------
C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools\bin\qbsp.exe marma

echo --------------VIS---------------
C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools\bin\vis.exe marma

echo -------------LIGHT--------------
C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools\bin\light.exe marma

copy marma.bsp C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps
copy marma.pts C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps
copy marma.lit C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps
pause
cd\
cd C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel
quakespasm  +map marma
