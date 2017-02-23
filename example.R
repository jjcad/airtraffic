library(sparklyr)
library(dplyr)
library(readr)

sc <- spark_connect(master = 'spark://master:7077')

#air <- spark_read_csv(sc, 'air', '*.csv', null_value = NA)
fls <- list.files(pattern = '*.csv')

for (i in fls) {
  dat <- read_csv(i)
  air <- copy_to(sc, dat, 'air')
}
