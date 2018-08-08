### =========================================================================
###  metadata
### -------------------------------------------------------------------------
###

meta <- data.frame(
  Title = c(paste0("Processed gene expression data and clinical ",
      "information of six breast cancer cohorts"),
      paste0("Processed gene expression data and clinical information",
       "of four colorectal cancer cohorts")),
  Description = c(paste0("Processed gene expression data ",
                       "and clinical data of 2294 patients from six ",
                       "breast cancer studies. These include GSE1456, ",
                       "GSE2034, GSE2990, GSE3494, GSE7390 and the ",
                       "metabric. Normalization is done by adjusting ",
                       "each gene by technical covariates using a mixed ",
                       "effects model. Data merging is done by ",
                       "standardizing the gene expression matrix of ",
                       "GSE1456, GSE2034, GSE2990, GSE3494 and GS7390 to ",
                       "a reference dataset (metabric). Only ER+ samples ",
                       "are included. Data in this package are used for ",
                       "the hrunbiased R package vignette"),
                   paste0("Processed gene expression data and clinical ",
                       "data of 914 patients from four colorectal cancer ",
                       "studies. These include GSE14333, GSE33113, GSE37892 ",
                       "and GSE39582. Normalization is done by adjusting ",
                       "each gene by technical covariates using a mixed ",
                       "effects model. Data merging is done by standardizing ",
                       "the gene expression matrix of GSE14333, GSE33113 and ",
                       "GSE37892 to a reference dataset (GSE39582). Only ",
                       "MSS samples are included.")),
  BiocVersion = c("3.8","3.8"),
  Genome = c("hg19","hg19"),
  SourceType = c("CEL files","CEL files"),
  SourceUrl = c(paste0("https://www.ncbi.nlm.nih.gov/geo/, ",
               "http://www.cbioportal.org/"),
               "https://www.ncbi.nlm.nih.gov/geo/"),
  SourceVersion = c("June 29 2017","June 29 2017"),
  Species = c("Homo sapiens","Homo sapiens"),
  TaxonomyId = c(9606,9606),
  Coordinate_1_based = c(TRUE,TRUE),
  DataProvider= c("GEO, cbioportal","GEO"),
  Maintainer = c("Adria Caballe <adria.caballe@irbbarcelona.org>",
                 "Adria Caballe <adria.caballe@irbbarcelona.org>"),
  RDataClass = c("ExpressionSet","ExpressionSet"),
  DispatchClass = c("Rda","Rda"),
  ResourceName = c("nda.brca.rda","nda.crc.rda"),
  RDataPath = c("mcsurvdata/nda.brca.rda","mcsurvdata/nda.crc.rda")
)

###write.csv(meta, file="inst/extdata/metadata.csv", row.names=FALSE)
