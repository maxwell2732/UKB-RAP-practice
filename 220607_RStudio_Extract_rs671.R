# 2022.06.07 Extract SNP from Imputation data
# path on RAP: /Bulk/Genotype Results/Imputation/UKB imputation from genotype/
# rs671 on Chr 12
# https://www.snpedia.com/index.php/Rs671

# In Terminal:
# $ dx download "Bulk/Genotype Results/Imputation/UKB imputation from genotype/ukb22828_c12_b0_v3.bgen"
# $ dx download "Bulk/Genotype Results/Imputation/UKB imputation from genotype/ukb22828_c12_b0_v3.sample"
# $ dx download "Bulk/Genotype Results/Imputation/UKB imputation from genotype/ukb22828_c12_b0_v3.bgen.bgi"
# $ dx download "Bulk/Genotype Results/Imputation/UKB imputation from genotype/ukb22828_c12_b0_v3.mfi.txt"

# In Console:
# Install rbgen
# https://enkre.net/cgi-bin/code/bgen/wiki/rbgen
install.packages( "http://www.well.ox.ac.uk/~gav/resources/rbgen_v1.1.5.tgz", repos = NULL, type = "source" )

# Load rbgen
library(rbgen)

# Extract rs671
dd <- bgen.load("ukb22828_c12_b0_v3.bgen", rsid="rs671")
print( dd$data[ 'rs671',, ] )


# Generate rs671 dataframe
rs671 <- dd$data[ 'rs671',, ] 

# Check dimension
dim(rs671)

# Write rs671 as CSV
write.csv(rs671,'ch12_rs671.csv')

# In Terminal:
# Upload the CSV file on to Project to avoid auto deletion after the R session
# $ dx upload ch12_rs671.csv


======================================================================
# Load directly from RAP Project w/o download to R space:

# Chr 7, SNPs rs2227264 and rs713598
rm(list=ls())

dd <- bgen.load("/mnt/project/Bulk/Genotype Results/Imputation/UKB imputation from genotype/ukb22828_c7_b0_v3.bgen", rsid=c("rs2227264","rs713598"))

rs2227264 <- dd$data[ 'rs2227264',, ] 
rs713598 <- dd$data[ 'rs713598',, ] 

write.csv(rs2227264,'ch7_rs2227264.csv')
write.csv(rs713598,'ch7_rs713598.csv')

=================================
# Chr 1, SNPs rs307355 and rs35874116
rm(list=ls())

dd <- bgen.load("/mnt/project/Bulk/Genotype Results/Imputation/UKB imputation from genotype/ukb22828_c1_b0_v3.bgen", rsid=c("rs307355","rs35874116"))

rs307355 <- dd$data[ 'rs307355',, ] 
rs35874116 <- dd$data[ 'rs35874116',, ] 

write.csv(rs307355,'ch1_rs307355.csv')
write.csv(rs35874116,'ch1_rs35874116.csv')

=================================
# Chr 15, SNPs rs762551
rm(list=ls())

dd <- bgen.load("/mnt/project/Bulk/Genotype Results/Imputation/UKB imputation from genotype/ukb22828_c15_b0_v3.bgen", rsid="rs762551")

rs762551 <- dd$data[ 'rs762551',, ] 

write.csv(rs762551,'ch15_rs762551.csv')


=================================
# Chr 2, SNPs rs11126630
rm(list=ls())

dd <- bgen.load("/mnt/project/Bulk/Genotype Results/Imputation/UKB imputation from genotype/ukb22828_c2_b0_v3.bgen", rsid="rs11126630")

rs11126630 <- dd$data[ 'rs11126630',, ] 

write.csv(rs11126630,'ch2_rs11126630.csv')
