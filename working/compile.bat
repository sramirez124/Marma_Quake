@echo off

cd\
cd C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\working


echo Copying Files...
copy C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps\magma.map C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\working


echo Converting map...


echo --------------QBSP--------------
C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools\bin\qbsp.exe magma

echo --------------VIS---------------
C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools\bin\vis.exe magma

echo -------------LIGHT--------------
C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools\bin\light.exe -soft magma
pause

copy magma.bsp C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps
copy magma.pts C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps
copy magma.lit C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps
pause
cd\
cd C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel
quakespasm  +map magma
