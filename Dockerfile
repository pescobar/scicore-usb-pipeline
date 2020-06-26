FROM continuumio/miniconda3:4.8.2
MAINTAINER Pablo Escobar <pablo.escobarlopez@unibas.ch>

# environment
ENV PATH="/opt/conda/bin:${PATH}"
ENV XDG_RUNTIME_DIR=""

# add conda channels
RUN conda config --add channels conda-forge
RUN conda config --add channels bioconda

# conda-forge installations
RUN conda install -c conda-forge biopython=1.77

# bioconda installations
RUN conda install --yes -c bioconda muscle==3.8.31
RUN conda install --yes -c bioconda variantbam==1.4.4a
RUN conda install --yes -c bioconda samtools==1.9
RUN conda install --yes -c bioconda BCFTools==1.9
RUN conda install --yes -c bioconda BEDTools==2.27.1
RUN conda install --yes -c bioconda vcflib==1.0.0_rc3
RUN conda install --yes -c bioconda seqtk==1.3
RUN conda install --yes -c bioconda snpeff==4.3.1t
RUN conda install --yes -c bioconda mafft==7.470
RUN conda install --yes -c bioconda iqtree==1.6.12
RUN conda install --yes -c bioconda fastqc==0.11.8
