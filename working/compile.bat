@echo off

cd\
cd C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\working


echo Copying Files...
copy C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps\lava.map C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\working


echo Converting map...


echo --------------QBSP--------------
C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools\bin\qbsp.exe lava

echo --------------VIS---------------
C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools\bin\vis.exe lava

echo -------------LIGHT--------------
C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\tools\ericw-tools\bin\light.exe -soft lava

copy lava.bsp C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps
copy lava.pts C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps
copy lava.lit C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel\id1\maps
pause
cd\
cd C:\Users\Steve\Documents\GitHub\quakemultiplayerlevel
quakespasm  +map lava
