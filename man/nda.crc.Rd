\name{nda.crc}
\alias{nda.crc}
\title{
  Processed gene expression data and clinical information of four
  colon cancer cohorts
}
\description{
Processed gene expression data and clinical data of 914
  patients from four colorectal cancer studies. These include GSE14333,
  GSE33113, GSE37892 and GSE39582. Normalization is done by adjusting
  each gene by technical covariates such as Eklund metrics and scanning day 
  in basis of a mixed effects model. Data
  merging is done by standardizing the gene expression matrix of
  GSE14333, GSE33113 and GSE37892 to a reference dataset (GSE39582). Only
  MSS samples are included.
}
\details{
 ExpressionSet object with merged data from studies:
  \itemize{
    \item GSE14333
    \item GSE33113
    \item GSE39582
    \item GSE37892
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

Jorissen, R. N. et al. Metastasis-Associated Gene Expression Changes Predict 
Poor Outcomes in Patients with Dukes Stage B and C Colorectal Cancer. Clinical 
Cancer Research 15, 7642–7651 (2009).

De Sousa E Melo, F. et al. Methylation of cancer-stem-cell-associated wnt 
target genes predicts poor prognosis in colorectal cancer patients. Cell 
Stem Cell 9, 476–485 (2011).

Marisa, L. et al. Gene Expression Classification of Colon Cancer into Molecular 
Subtypes: Characterization, Validation, and Prognos- tic Value. PLoS 
Medicine 10 (2013).

Laibe, S. et al. A seven-gene signature aggregates a subgroup of stage II 
colon cancers with stage III. Omics : a journal of integrative biology 16, 
560–5 (2012).


}
\examples{
library(ExperimentHub)
eh <- ExperimentHub()
nda.crc <- query(eh, "mcsurvdata")[[2]]

# survival info
cbind(nda.crc$evn,nda.crc$tev)

}
\keyword{package}
\keyword{datasets}
