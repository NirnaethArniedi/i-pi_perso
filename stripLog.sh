#!/bin/bash

name=$1

grep "Force Difference" $name | awk '{print $3}' > simu_forcesDiff.out
grep "MaxForces" $name | awk '{print $2}' > simu_maxForces.out
grep "Energy differences" $name | awk '{print $3}' > simu_energyDiff.out
grep "Position" $name | awk '{print $2}' > simu_positions.out

exit 0
