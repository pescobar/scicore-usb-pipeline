FROM continuumio/miniconda3:4.9.2
MAINTAINER Pablo Escobar <pablo.escobarlopez@unibas.ch>

# install some system deps
# poppler-utils provides utility "pdfunite"
RUN apt-get update && apt-get install -y \
    poppler-utils \
 && rm -rf /var/lib/apt/lists/*

# add conda channels
RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda

# bioconda installations
RUN conda install --yes -c bioconda htslib==1.12
RUN conda install --yes -c bioconda samtools==1.12
RUN conda install --yes -c bioconda bwa==0.7.17
RUN conda install --yes -c bioconda mafft==7.480
RUN conda install --yes -c bioconda iqtree==2.1.2
RUN conda install --yes -c bioconda variantbam==1.4.4a
RUN conda install --yes -c bioconda bedtools==2.30.0
RUN conda install --yes -c bioconda bcftools==1.12
RUN conda install --yes -c bioconda seqtk==1.3
RUN conda install --yes -c bioconda trimmomatic==0.39
RUN conda install --yes -c bioconda vcftools==0.1.16
RUN conda install --yes -c bioconda snpeff==5.0
RUN conda install --yes -c bioconda gofasta==0.0.4
RUN conda install --yes -c bioconda minimap2==2.20
RUN conda install --yes -c bioconda ucsc-fatovcf==407
RUN conda install --yes -c bioconda biopython==1.79
RUN conda install --yes -c bioconda usher==0.3.1
RUN conda install --yes -c bioconda bioconductor-rsamtools==2.8.0
RUN conda install --yes -c bioconda bioconductor-rtracklayer==1.52.0
RUN conda install --yes -c bioconda bioconductor-variantannotation==1.38.0
RUN conda install --yes -c bioconda bioconductor-ggtree==3.0.1
RUN conda install --yes -c bioconda vcflib==1.0.2
RUN conda install --yes -c bioconda pilon==1.24
RUN conda install --yes -c bioconda muscle==3.8.1551
RUN conda install --yes -c bioconda fastqc==0.11.9
RUN conda install --yes -c bioconda snp-sites==2.5.1
RUN conda install --yes -c bioconda pangolin==2.3.6
RUN conda install --yes -c bioconda bioconductor-gviz

# conda-forge installations
RUN conda install --yes -c conda-forge r-seqinr
