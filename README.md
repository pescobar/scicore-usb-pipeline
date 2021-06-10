# scicore-usb-pipeline

This container includes the following apps from [BioConda](https://bioconda.github.io/index.html):

```
htslib==1.12
samtools==1.12
bwa==0.7.17
mafft==7.480
iqtree==2.1.2
variantbam==1.4.4a
bedtools==2.30.0
bcftools==1.12
seqtk==1.3
trimmomatic==0.39
vcftools==0.1.16
snpeff==5.0
gofasta==0.0.4
minimap2==2.20
ucsc-fatovcf==407
biopython==1.79
usher==0.3.1
bioconductor-rsamtools==2.8.0
bioconductor-rtracklayer==1.52.0
bioconductor-variantannotation==1.38.0
bioconductor-ggtree==3.0.1
vcflib==1.0.2
pilon==1.24
muscle==3.8.1551
fastqc==0.11.9
```

## Downloading the container with Singularity (latest)

   `$> singularity pull "pipeline_usb.sif" docker://pescobar/scicore-usb-pipeline:latest`

## Downloading the container with Singularity (specific version)

   `$> singularity pull "pipeline_usb_0.0.1.sif" docker://pescobar/scicore-usb-pipeline:0.0.1`

## Using the container with singularity

   `$> singularity exec pipeline_usb.sif samtools --help`

## Interactive shell inside the container with singularity

   `$> singularity shell pipeline_usb.sif`
