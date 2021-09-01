# use IMF R package to access api
library(tidyverse)
library(imfr)
library(lubridate)

#read in data from IMF
ipi_df <- imf_data('IFS','AIP_SA_IX',
                   freq="Q") %>%
  mutate(date_quarter=ym(year_quarter),
         date=year(date_quarter))

