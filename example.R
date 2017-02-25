library(sparklyr)
library(tidyverse)

sc <- spark_connect(master = 'spark://master:7077')

#air <- spark_read_csv(sc, 'air', '*.csv', null_value = NA)
air <- spark_read_csv(sc, 'air', 'air.csv', null_value = NA)

#fls <- list.files(pattern = '*.csv')

#airDat <-
#  bind_rows(
#    read_csv('2005.csv'),
#    read_csv('2006.csv'),
#    read_csv('2007.csv'),
#    read_csv('2008.csv')
#    ) %>%
#  sdf_copy_to(sc, ., 'airDat', overwrite = TRUE)
#