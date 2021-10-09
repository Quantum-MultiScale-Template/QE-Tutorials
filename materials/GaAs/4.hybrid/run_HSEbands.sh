#!/bin/bash
QE_BIN=/home/donadio/Programs/QE/qe-6.8/bin
PWX=$QE_BIN/pw.x
BNDX=$QE_BIN/bands.x
PLT=$QE_BIN/plotband.x
echo "Running QE with mpirun -np 4 $PWX"

########################################
mpirun -np 4 $PWX < GaAs.hse.bands.in > GaAs.bands.out
mpirun -np 4 $BNDX < GaAs.bandpp.in > GaAs.bandpp.out
