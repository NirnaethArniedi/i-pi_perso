#!/bin/bash

name=$1

awk '/Force Differe/ {$1=$2=$NF="";$0=$0;$1=$1;print $0}' $name > simu_forcesDiff.out
awk '/Forces/ {$1=$NF="";$0=$0;$1=$1;print $0}' $name > simu_maxForces.out
awk '/Energy Diff/ {$1=$2=$NF="";$0=$0;$1=$1;print $0}' $name > simu_energyDiff.out
awk '/osition/ {$1=$NF="";$0=$0;$1=$1;print $0}' $name > simu_positions.out

exit 0
