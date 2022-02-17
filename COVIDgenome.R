# Git Hub Link: https://github.com/mstewart2000/Sequence-Data-Assignment
ncbi_ids2 <- "NC_045512.2"
library(rentrez)
Sequences2 <- entrez_fetch(db = "nuccore", id = ncbi_ids2, rettype = 'fasta')
Sequences2 <- unlist(Sequences2)
header2 <- gsub("(^>.*genome)\\n[ATCG].*","\\1",Sequences2)
seq2 <- gsub("^>.*genome\\n([ATCG].*)", "\\1", Sequences2)
Sequences2 <- data.frame(Name = header2, Sequence = seq2)
Sequences2$Sequence <- gsub("\n", "", Sequences2$Sequence)

## Couldn't get expression for work
# Also worth noting that the sequence at bp 21,563 is ATGTTTGTTTTTCTTGTTTTA (there might be an extra T than what is on the assignment but idk)

#This gene is highly conserved, as demonstrated by the almost total alignment between the different sequences
