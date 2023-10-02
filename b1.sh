#!/bin/bash
 set -e
 ml cpu
 ml PrgEnv-intel
 ml cray-mpich/8.1.27
#ml cray-mpich/8.1.26
 ml -t
 set -x
 rm -f a.out
 ftn a1.f && ls -l a.out
 srun -n 4 ./a.out
