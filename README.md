# Quantum Espresso Tutorials
Tutorials on Quantum Espresso for the Q-MS School 

## GaAs: A direct gap semiconductor
0. Run your first SCF calculation for GaAs
1. Test convergence of the total energy against the k-point mesh
2. Compute the equation of state (energy vs. volume):
- Run a sequence of SCF calculations with different lattice parameter
- Fit to the Murnaghan equation of state (code: ev.x) and compare to experiments
3. Compute the bands and the electronic density of states.
- How large is the band gap? Does it compare well to experiments?
4. Repeat the band gap calculation using a hybrid functional (HSE): what happens to the band gap?

## Al bulk: a metal
1. Modify the GaAs input file to run SCF for Aluminum: does it work?
2. Use smearing to achieve SCF and test k-points convergence 
3. Compute the equation of state (energy vs. volume) + Murnhagan Fit
- Test the plane waves cutoff 
- Test the effect of the smearing 
4. Compute the bands and the electronic density of states
