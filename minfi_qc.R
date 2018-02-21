require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1] 
output1 = args[2]
output2 = args[3]

MSet <- get(load(input))

qc <- getQC(MSet)

write.table(qc, output1)

png(output2)
plotQC(qc)
dev.off()
