FROM bioconductor/bioconductor_docker:devel

LABEL authors="Laurent Gatto" \
      url="https://github.com/lgatto/QFeaturesWorkshop2020" \
      maintainer="laurent.gatto@uclouvain.be" \
      description="Docker image containing the QFeatures workshop at EuroBioc2020." \
      license="Artistic-2.0"
    
WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

ENV R_REMOTES_NO_ERRORS_FROM_WARNINGS=true

RUN apt-get update && \
      apt-get -y install libgit2-dev

## Install the QFeaturesWorkshop2020 package and additional required packages
RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

RUN Rscript --vanilla -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install('usethis')"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"
