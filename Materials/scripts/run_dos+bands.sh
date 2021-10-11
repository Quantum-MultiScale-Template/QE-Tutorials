#!/bin/bash
QE_BIN=/home/donadio/Programs/QE/qe-6.8/bin

#####################################################################

PWX=$QE_BIN/pw.x
BNDX=$QE_BIN/bands.x
PLT=$QE_BIN/plotband.x
DOS=$QE_BIN/dos.x
PROJ=$QE_BIN/projwfc.x
echo "Running QE with mpirun -np 4 $PWX"

#####################################################################
# Run a SCF calculation
mpirun -np 4 $PWX < GaAs.scf.in > GaAs.scf.out
echo "SCF done"

# Run a non-SCF calculation with empty states 
mpirun -np 4 $PWX < GaAs.nscf.in > GaAs.nscf.out
echo "NSCF done"
$DOS < GaAs.dos.in > GaAs.dos.out
$PROJ < GaAs.projwfc.in > GaAs.projwfc.out
echo "DOS done"

# Diagonalize the Hamiltonian at the k-points along the bands path
mpirun -np 4 $PWX < GaAs.bands.in > GaAs.bands.out
mpirun -np 4 $BNDX < GaAs.bandpp.in > GaAs.bandpp.out
echo "Bands done"
