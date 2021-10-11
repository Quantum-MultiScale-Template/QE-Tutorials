#!/bin/bash
# Get pseudopotentials

TUTORIALPWD=/home/donadio/Tutorials/Denton_School

wget https://www.quantum-espresso.org/upf_files/Ga.pbe-dnl-kjpaw_psl.1.0.0.UPF
wget https://www.quantum-espresso.org/upf_files/As.pbe-n-kjpaw_psl.1.0.0.UPF
wget https://www.quantum-espresso.org/upf_files/Al.pbe-nl-kjpaw_psl.1.0.0.UPF
wget https://www.quantum-espresso.org/upf_files/H.pbe-kjpaw_psl.1.0.0.UPF

mv *UPF $TUTORIALPWD/Pseudo
