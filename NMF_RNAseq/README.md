# Non-negative Matrix Factorization with RNASeq Data

## Outline of the main steps

1. Preprocessing
   
   I have mentioned below the steps involved in downloading and preparing the count table
2. NMF
   
   Performing Non-negative matrix factorization is described in detail in the accompanying jupyter notebook
3. Gene Ontology Analysis

  	Gene enrichment analysis is described in detail in the R Markdown file 

---

## 1. Preprocessing


**Downloading the raw RNAseq data from EBI**

```
./dl_aba_timeEvolve.sh

```


Make sure after executing this command in the terminal, the folders (whose names start with SRR) and files (with fatsq.gz extensions and names same as the folder names) are created and downloaded respectively.


**Downloading the reference genome**

```
curl ftp://ftp.ensemblgenomes.org/pub/plants/release-28/fasta/arabidopsis_thaliana/cdna/Arabidopsis_thaliana.TAIR10.28.cdna.all.fa.gz -o athal.fa.gz
```

**Preparing the index that salmon will use later on**

```
salmon index -t athal.fa.gz -i athal_index
```

**Quantifying the expression level of each transcript from the raw data using salmon package**

```
./run_salmon_on_ABATimeEvolve.sh
```

**Aggregating the the transcript expression levels to generate gene-level expression table**

I have used tximport package from R to perform this task. The details can be found in the 'fromSalmon2tximport_aba.Rmd' file.

