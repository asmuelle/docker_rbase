FROM r-base:3.3.2

MAINTAINER Andreas Mueller "andreas@kwiqly.com" 
RUN apt-get update && apt-get install -y libxt-dev libssl-dev libcurl4-gnutls-dev  r-cran-rpostgresql libpq-dev

RUN R -e "install.packages(c('ineq','jsonlite','knitr', 'plyr', 'dplyr','mclust' ,'memoise','NbClust','RColorBrewer','readr', 'rjson','R.utils', 'scales','tidyr','xtable'), repos='https://cran.rstudio.com/')"
RUN R -e  "install.packages(c('devtools','cobs'),  repos='http://cran.us.r-project.org')"
RUN R -e  "devtools::install_github(c('rstudio/pool', 'RcppCore/Rcpp', 'rstats-db/DBI', 'rstats-db/RPostgres'))"
