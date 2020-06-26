# scicore-usb-pipeline

This container includes the following apps from [BioConda](https://bioconda.github.io/index.html):

```
muscle==3.8.31
variantbam==1.4.4a
samtools==1.9
BCFTools==1.9
BEDTools==2.27.1
vcflib==1.0.0_rc3
seqtk==1.3
snpeff==4.3.1t
mafft==7.470
iqtree==1.6.12
fastqc==0.11.8
```

## Downloading the container with Singularity (latest)

   `$> singularity pull "pipeline_usb.sif" docker://pescobar/scicore-usb-pipeline:latest`

## Downloading the container with Singularity (specific version)

   `$> singularity pull "pipeline_usb_0.0.1.sif" docker://pescobar/scicore-usb-pipeline:0.0.1`

## Using the container with singularity

   `$> singularity exec pipeline_usb.sif samtools -h`

## Interactive shell inside the container with singularity

   `$> singularity shell pipeline_usb.sif`
