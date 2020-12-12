FROM bioconductor/bioconductor_docker:devel

MAINTAINER laurent.gatto@uclouvain.be
LABEL authors="laurent.gatto@uclouvain.be" \
    url="https://github.com/lgatto/QFeaturesWorkshop2020" \
    description="Docker image containing the QFeatures workshop at EuroBioc2020."
    
WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

ENV R_REMOTES_NO_ERRORS_FROM_WARNINGS=true

RUN apt-get update && \
      apt-get -y install libgit2-dev

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

RUN Rscript --vanilla -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install('usethis')"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"
