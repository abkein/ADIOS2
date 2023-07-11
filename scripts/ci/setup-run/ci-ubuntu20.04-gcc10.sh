#!/bin/bash

update-alternatives --set gcc "$(update-alternatives --list gcc | grep gcc-10)"
update-alternatives --set g++ "$(update-alternatives --list g++ | grep g++-10)"
update-alternatives --set gfortran "$(update-alternatives --list gfortran | grep gfortran-10)"

spack env activate "adios2-ci-${GH_YML_MATRIX_PARALLEL}"
