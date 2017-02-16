library(sparklyr)
library(dplyr)

sc <- spark_connect(master = 'local')

air <- spark_read_csv(sc, 'air', '*.csv', null_value = NA)
