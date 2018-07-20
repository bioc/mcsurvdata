\name{mcsurvdata}
\alias{mcsurvdata-package}
\docType{package}
\title{
 Processed gene expression data and clinical information of several
  breast cancer and colorectal cancer cohorts
}
\description{
 Contains the processed gene expression data and clinical data from six breast
 cancer studies \code{\link{nda.brca}} as well as from four colon cancer 
 studies \code{\link{nda.crc}}.
}
\details{
 ExpressionSet objects with merged data 
}

\examples{
library(ExperimentHub)
eh <- ExperimentHub()
nda.brca <- query(eh, "mcsurvdata")[[1]]
nda.crc <- query(eh, "mcsurvdata")[[2]]

}
\keyword{package}
\keyword{datasets}
