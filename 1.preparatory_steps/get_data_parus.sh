#!/bin/sh

cd ../data

wget https://datadryad.org/bitstream/handle/10255/dryad.46938/2497_indiv_5591_markers.map
wget https://datadryad.org/bitstream/handle/10255/dryad.46939/2497_indiv_5591_markers.ped
wget https://datadryad.org/bitstream/handle/10255/dryad.46941/2497_indiv_phenotype.txt

~/Downloads/plink --file 2497_indiv_5591_markers --chr-set 31 --chr 1,2,3 --bp-space 1 --recode --out parus

Rscript --vanilla ../1.preparatory_steps/prepare_data.R 2497_indiv_phenotype.txt

cd ..


