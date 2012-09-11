library(TraMineR)
help(biofam)
data(biofam)

#INSPECT FIRST SIX ROWS OF DATA 
#fix(biofam)
head(biofam)

#CREATE STATE SEQUENCE OBJECT
biofam.shortlab <- c("P", "L", "M", "L+M", "C", "L+C", "L+M+C", "D")
biofam.lab <- c("Parent", "Left", "Married", "Left+Marr","Child", "Left+Child", "Left+Marr+Child", "Divorced")
biofam.coln <-c("15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30")
biofam.seq <- seqdef(biofam, 10:25, states=biofam.shortlab, labels=biofam.lab, xtlab=biofam.coln)

#SEQUENCE INDEX PLOT
seqIplot(biofam.seq, border=NA, space=0, xtlab=biofam.coln)

#SEQUENCE FREQUENCY PLOT
seqfplot(biofam.seq, xtlab=biofam.coln)

#SEQUENCE DISTRIBUTION PLOT
seqdplot(biofam.seq, border=NA, space=0, xtlab=biofam.coln)

#PRINT FIRST 10 SEQUENCES
#extended format
print(biofam.seq[1:10, ], ext=T)
#compact format
print(biofam.seq[1:10, ], format = "SPS")