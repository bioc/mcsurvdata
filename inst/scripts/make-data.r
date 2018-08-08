###############################################################################
######## From raw data to processed data available in the package #############
###############################################################################

################### Breast cancer cohort ###############
### Data from GEO repository https://www.ncbi.nlm.nih.gov/geo/ under accession
# numbers GSE1456,  GSE2034, GSE2990, GSE3494 and GSE7390 were considered.

### CEL files were downloaded, and raw data were obtained using the R
# function affy::ReadAffy. Normalized expression sets were found from raw data
# using R functions affyPLM::rmaPLM and affyPLM::PLMset2exprSet.

### Annotation from HG-U133 affymetrix was used, relase date 2015_04_16

### ER classification (ER+ or ER-) was imputated using hierchical clustering
# pdfCluster::pdfCluster function from the expression of the ESR1 gene

### HER2 classification (HER2+ or HER2-) was imputated using hierchical
# clustering pdfCluster::pdfCluster function from the expression of the
# ERBB2 gene

### PR classification (PR+ or PR-) was imputated using hierchical clustering
# pdfCluster::pdfCluster function from the expression of the PGR gene

### Eklund metrics (https://www.ncbi.nlm.nih.gov/pubmed/18248669)
# were considered as adjusting covariates in a linear model to remove
# expression changes due to possible technical artefacts.

### A second linear model was fitted to each probeset and dataset separately,
# in order to correct by potential technical effects of the scanning day
# (see function Biobase::protocolData). This correction was carried out using
# a mixed-effect model in which ER, HER2 and PR factors were also included in
# the model to protect biological effects as were not used to adjust the 
# original data.

### The metabric for breast cancer data 
# (https://www.nature.com/articles/nature10983) was also downloaded but no 
# extra data processing was undertaken. Each of the expression matrices from 
# GEO were standardized gene-wise using the metabric dataset as a reference.

### Survival information (relapse event and months to relapse) was annonated
# as part of the KM plotter version 2010 
# (https://www.ncbi.nlm.nih.gov/pubmed/20020197)

### Only ER+ samples were kept for the final processed data.

### Full code used for the processing of the CEL files to the saved data
# provided in this data package can be made available upon request.

################### Colon cancer cohort ###############
### Data from GEO repository https://www.ncbi.nlm.nih.gov/geo/ under accession
# numbers GSE14333,  GSE39582, GSE33113 and GSE37892 were considered.

### CEL files were downloaded, and raw data were obtained using the R
# function affy::ReadAffy. Normalized expression sets were found from raw data
# using R functions affyPLM::rmaPLM and affyPLM::PLMset2exprSet.

### Annotation from HG-U133 affymetrix was used, relase date 2015_04_16

### MSI classification (MSI or MSS) was imputated using hierchical clustering
# pdfCluster::pdfCluster function from the expression of a gene signature
# proposed by Jorissen et al, ClinCanRes 2008.

### Microarray datasets were corrected separately by Eklund metrics
# (https://www.ncbi.nlm.nih.gov/pubmed/18248669) PM IQR, RMA IQR and RNA DEG.
# For doing so, a linear model was fitted separately for each probeset that 
# included these metrics as the only explanatory variables, and coefficients of
# such models were used to correct the expression values a-priori.

### A second linear model was fitted to each probeset and dataset separately,
# in order to correct by potential technical effects captured by sample’s 
# center of origin and batch (scanning day). This correction was carried out 
# using a mixed-effect model in which gender, age at diagnosis, stage, tumour 
# location and Microsatellite Instability (MSI) status were also included as 
# covariates, when available. Scanning day was modeled as a random effect in 
# these models, while center was included as a fixed (GSE14333) or a random 
# effect (GSE39582 and GSE37892) depending on the number of centers involved 
# and on the sample size in each of them.

###  GSE14333, GSE37892 and GSE33113 expression matrices were standardized 
# gene-wise using the GSE39582 dataset as a reference.

### Survival information (relapse event and years to relapse) was obtained
# from the GEO objects

### Only MSS samples were kept for the final processed data.

### Full code used for the processing of the CEL files to the saved data
# provided in this data package can be made available upon request.

###############################################################################
###############################################################################


###############################################################################

### Exploration of the available data
library(ExperimentHub)
library(Biobase)
eh <- ExperimentHub()
nda.brca <- query(eh, "mcsurvdata")[["EH1497"]]
nda.crc <- query(eh, "mcsurvdata")[["EH1498"]]

## Information of 2 merged datasets
(nda.brca)
(nda.crc)

## pData method gives clinical and experimental information
head(pData(nda.brca))
head(pData(nda.crc))

## scan batch and Eklund metrics as function of scan.time
plot(nda.brca$scan.batch[nda.brca$dataset=="GSE1456"],
     nda.brca$pm.iqr[nda.brca$dataset=="GSE1456"], col=1:6)
plot(nda.brca$scan.batch[nda.brca$dataset=="GSE1456"],
     nda.brca$rma.iqr[nda.brca$dataset=="GSE1456"], col=1:6)
plot(nda.brca$rna.deg[nda.brca$dataset=="GSE1456"],
     col=nda.brca$scan.batch[nda.brca$dataset=="GSE1456"])

## exprs method gives the (adjusted by scan batches and Eklund metrics)
# expression data measurements
plot(density(exprs(nda.brca[,nda.brca$dataset=="GSE1456"])[1,]))
plot(density(exprs(nda.crc[,nda.crc$dataset=="GSE14333"])[1,]))










