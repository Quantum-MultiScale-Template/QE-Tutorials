#!/bin/bash
QE_BIN=/home/donadio/Programs/QE/qe-6.8/bin
PWX=$QE_BIN/pw.x
echo "Running QE with mpirun -np 4 $PWX"

########################################

for iter in  2 4 6 8 10 12
do
   sed "s/kxxx/${iter}/g" template.kpt.in > scf.in
   mpirun -np 4 $PWX < scf.in > scf.${iter}.log
   echo $iter >> kp.dat
   grep ! scf.${iter}.log |cut -b33- >> energies.dat
done
paste kp.dat energies.dat > kp_E.dat
rm kp.dat energies.dat
