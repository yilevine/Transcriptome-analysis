#!/bin/bash

export PATH=$PATH:/data/leuven/346/vsc34665/software/sratoolkit.3.0.0-centos_linux64/bin

which fastq-dump

# download the first data
cd PRJEB33164
fastq-dump --split-3 --gzip $(<./PRJEB33164.txt)

# second data
cd ../PRJEB35740
fastq-dump --split-3 --gzip $(<./PRJEB35740.txt)

#third data
cd ../PRJNA628522
fastq-dump --split-3 --gzip $(<./PRJNA628522.txt)

# fourth data
# cd ../PRJNA765573
# fastq-dump --split-3 --gzip $(<./PRJNA765573.txt)
