# !/bin/bash

for fq in /lustre1/project/stg_00085/YileF/AF_project/demultiplexing/snp_array/snRNA_seq/xianyu/geo/PRJEB33164/fastq/*.fastq.gz

do

# grab base of filename for naming outputs
base=`basename $fq .fastq.gz`

echo "converting on $base"

seqtk seq -a $fq > ${base}.fasta

done

