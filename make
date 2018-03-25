*
*  DumpOBJ
*

unset exit

Newer DumpOBJ DumpOBJ.rez
if {Status} != 0
   set exit on
   echo compile DumpOBJ.rez keep=DumpOBJ
   compile DumpOBJ.rez keep=DumpOBJ
   unset exit
end

MoreRecent DumpOBJ.a DumpOBJ.cc
if {Status} != 0
   set exit on
   echo compile +t +e DumpOBJ.cc
   compile +t +e DumpOBJ.cc
   unset exit
end

set auxtype $DB01
echo set auxtype $DB01

echo link DumpOBJ keep=DumpOBJ
link DumpOBJ keep=DumpOBJ

rename dumpobj DumpOBJ
