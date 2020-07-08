#!/bin/bash

# Setting
mkdir -p data
mkdir -p output
mkdir -p output/{fastqc,multiqc}
mkdir -p logs
export PATH=$PATH:/home/koki/Software/sratoolkit.2.10.8-centos_linux64/bin:/home/koki/Software/fastqc/FastQC:/home/koki/.local/bin
srr=(`echo SRR{8452726..8453394}`)

for ((i = 0; i < ${#srr[@]}; i++)) {
	# Step1: fastq-dump
    /usr/bin/time -v fastq-dump ${srr[$i]} --outdir data >& logs/fastq-dump_${srr[$i]}.log
	# Step2: FastQC
	/usr/bin/time -v fastqc data/${srr[$i]}.fastq -o output/fastqc >& logs/fastqc_${srr[$i]}.log
}
# Step3: MultiQC
/usr/bin/time -v multiqc output/fastqc --outdir output/multiqc >& logs/multiqc.log
