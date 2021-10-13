#!/bin/bash
#!/bin/bash
QE_BIN=/home/donadio/Programs/QE/qe-6.8/bin
PWX=$QE_BIN/pw.x
EVX=$QE_BIN/ev.x
echo "Running QE with mpirun -np 4 $PWX"

############################################################
for iter in  9.0 9.5 10.0 10.5 11.0 11.5 12.0
do
   sed "s/xxxx/${iter}/g" template.eos.in > scf.in
   mpirun -np 4 $PWX < scf.in > scf.${iter}.log
   grep volume  scf.${iter}.log | cut -b33-46 >> volume.dat
   grep ! scf.${iter}.log |cut -b33- >> energies.dat
done
paste volume.dat energies.dat > vol_E.dat
rm energies.dat volume.dat

$EVX < ev.inp
