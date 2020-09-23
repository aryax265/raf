#!/bin/bash

#PBS -N exampleScript 
#PBS -l select=1:ncpus=1:mem=1gb:ngpus=1
#PBS -l walltime=00:01:00
#PBS -q defaultQ
#PBS -m abe 
#PBS -M arya.samanta@students.iiserpune.ac.in

#Change into the directory where you submitted qsub
cd $PBS_O_WORKDIR

#Load modules we need
module load cuda/8.0.44

#Actually run the program
./hello_gpu
