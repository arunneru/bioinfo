#!/bin/bash
mkdir data
cd data
for i in `seq 02 28`; 
do 
  mkdir SRR34180${i}; 
  cd SRR34180${i}; 
  wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR341/SRR34180${i}/SRR34180${i}.fastq.gz;  
  cd ..; 
done
cd .. 
