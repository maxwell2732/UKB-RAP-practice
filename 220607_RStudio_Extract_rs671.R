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

# Load directly from RAP Project:
dd <- bgen.load("/Bulk/Genotype Results/Imputation/UKB imputation from genotype/ukb22828_c7_b0_v3.bgen", rsid="rs2227264")
dd <- bgen.load("/mnt/project/Bulk/Genotype Results/Imputation/UKB imputation from genotype/ukb22828_c7_b0_v3.bgen", rsid="rs2227264")


# Generate rs671 dataframe
rs671 <- dd$data[ 'rs671',, ] 

# Check dimension
dim(rs671)

# Write rs671 as CSV
write.csv(rs671,'ch12_rs671.csv')

# In Terminal:
# Upload the CSV file on to Project to avoid auto deletion after the R session
# $ dx upload ch12_rs671.csv

