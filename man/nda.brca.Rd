\name{nda.brca}
\alias{nda.brca}
\title{
  Processed gene expression data and clinical information of six
  breast cancer cohorts
}
\description{
 Processed gene expression data and clinical data of 2294
  patients from six breast cancer studies. These include GSE1456, GSE2034,
  GSE2990, GSE3494, GSE7390 and the metabric. Normalization is done by
  adjusting each gene by technical covariates such as Eklund metrics and scanning day 
  in basis of a mixed effects model. Data merging is done by standardizing the gene expression matrix
  of GSE1456, GSE2034, GSE2990, GSE3494 and GSE7390 to a reference dataset
  (metabric). Only ER+ samples are included. Data in this package are
  used for the hrunbiased R package vignette

}
\details{
 ExpressionSet object with merged data from studies:
  \itemize{
    \item GSE1456
    \item GSE2034
    \item GSE2990
    \item GSE3494
    \item GSE7390
    \item metabric
  }
}

\author{
 Adria Caballe Mestres, Antoni Berenguer Llergo, Camille Stephan-Otto Attolini.
}
\references{
Caballe Mestres A, Berenguer Llergo A and Stephan-Otto Attolini C. 
Adjusting for systematic technical biases in risk assessment of gene signatures 
in transcriptomic cancer cohorts. bioRxiv (2018). 

Eklund A. and Szallasi Z. Correction of technical bias in clinical microarray 
data improves concordance with known biological information. Genome Biology 9, 
R26 (2008)

Pawitan, Y. et al. Gene expression profiling spares early breast cancer 
patients from adjuvant therapy: derived and validated in two population-based 
cohorts. Breast Cancer Research 7, R953 (2005).

Wang, Y. et al. Gene-expression profiles to predict distant metastasis of 
lymph-node-negative primary breast cancer. The Lancet 365, 671–679 (2005).

Sotiriou, C. et al. Gene Expression Profiling in Breast Cancer: 
Understanding the Molecular Basis of Histologic Grade To Improve Prognosis. 
JNCI: Journal of the National Cancer Institute 98, 262–272 (2006).

Miller, L. D. et al. From The Cover: An expression signature for p53 status 
in human breast cancer predicts mutation status, transcriptional effects, and 
patient survival. Proceedings of the National Academy of Sciences 102, 
13550–13555 (2005).

Desmedt, C. et al. Strong Time Dependence of the 76-Gene Prognostic Signature 
for Node-Negative Breast Cancer Patients in the TRANSBIG Multicenter Independent 
Validation Series. Clinical Cancer Research 13, 3207–3214 (2007).

Curtis, C. et al. The genomic and transcriptomic architecture of 2,000 breast 
tumours reveals novel subgroups. Nature 486, 346-352 (2012).

}

\examples{
library(ExperimentHub)
eh <- ExperimentHub()
nda.brca <- query(eh, "mcsurvdata")[[1]]

# survival info
cbind(nda.brca$evn,nda.brca$tev)

}
\keyword{package}
\keyword{datasets}
