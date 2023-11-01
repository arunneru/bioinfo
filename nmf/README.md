# Non-negative Matrix Factorization with RNASeq Data

## Outline of the main steps

1. Preprocessing
   
   I have mentioned below the steps involved in downloading and preparing the count table
2. NMF
   
   Performing Non-negative matrix factorization is described in detaile in the accompanying jupyter notebook
3. Gene Ontology Analysis

  	Gene enrichment analysis is described in detail in the R Markdown file 

---

## 1. Preprocessing


Downloading the raw RNAseq data from EBI

```
./dl_aba_timeEvolve.sh

```


Make sure after executing this command in the terminal, the folders (whose names start with SRR) and files (with fatsq.gz extensions and names same as the folder names) are created and downloaded respectively.


Download the reference genome

```
curl ftp://ftp.ensemblgenomes.org/pub/plants/release-28/fasta/arabidopsis_thaliana/cdna/Arabidopsis_thaliana.TAIR10.28.cdna.all.fa.gz -o athal.fa.gz
```

Prepare the index that salmon will use later on

```
salmon index -t athal.fa.gz -i athal_index
```

Quantify the transcript level in the raw data using salmon package

```
./run_salmon_on_ABATimeEvolve.sh
```
