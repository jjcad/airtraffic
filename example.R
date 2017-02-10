library(sparklyr)
library(dplyr)

sc <- spark_connect(master = 'local')

air2008 <- spark_read_csv(sc, 'air2008', '2008.csv', null_value = NA)
