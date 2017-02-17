install.packages('sparklyr')

# Grab the data. Can take a few minutes.
download.file('http://stat-computing.org/dataexpo/2009/2008.csv.bz2', '2008.csv.bz2')
download.file('http://stat-computing.org/dataexpo/2009/2007.csv.bz2', '2007.csv.bz2')
download.file('http://stat-computing.org/dataexpo/2009/2006.csv.bz2', '2006.csv.bz2')
download.file('http://stat-computing.org/dataexpo/2009/2005.csv.bz2', '2005.csv.bz2')

# Unzipping them all might take a minute...
system2('bunzip2', '*.bz2')
