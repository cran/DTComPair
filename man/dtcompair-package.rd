\name{DTComPair-package}
\alias{DTComPair-package}
\alias{DTComPair}
\docType{package}
\title{Comparison of Binary Diagnostic Tests in a Paired Study Design}

\description{
This package contains functions to compare the accuracy of two binary diagnostic tests in a \dQuote{paired} study design, i.e. when each test is applied to each subject in the study. 
}

\details{
\tabular{ll}{
Package: \tab DTComPair\cr
Type: \tab Package\cr
Version: \tab 1.0.1\cr
Date: \tab 2013-07-14\cr
License: \tab GNU >=2\cr
}

The accuracy measures that can be compared in the present version are sensitivity, specificity, positive and negative predictive values, and positive and negative diagnostic likelihood ratios.  

It is required that results from a binary gold-standard test are also available. 

Methods for comparison of sensitivity and specificity: McNemar test (McNemar, 1947) and exact binomial test. Further, several methods to compute confidence intervals for differences in sensitivity and specificity are implemented.

Methods for comparison of positive and negative predictive values: generalized score statistic (Leisenring et al., 2000), weighted generalized score statistic (Kosinski, 2013) and comparison of relative predictive values (Moskowitz and Pepe, 2006).

Methods for comparison of positive and negative diagnostic likelihood ratios: a regression model approach (Gu and Pepe, 2009).

For a general introduction into the evaluation of diagnostic tests see e.g. Pepe (2003) or Zhou et al. (2011).
}

\author{
Christian Stock, Thomas Hielscher

Maintainer: Christian Stock <stock@imbi.uni-heidelberg.de>
}

\references{
Gu, W. and Pepe, M. S. (2009). Estimating the capacity for improvement in risk prediction with a marker. \emph{Biostatistics}, 10(1):172-86.

Kosinski, A.S. (2013). A weighted generalized score statistic for comparison of predictive values of diagnostic tests. \emph{Stat Med}, 32(6):964-77.

Leisenring, W., Alonzo, T., and Pepe, M.S. (2000). Comparisons of predictive values of binary medical diagnostic tests for paired designs. \emph{Biometrics}, 56(2):345-51.

McNemar, Q. (1947). Note on the sampling error of the difference between correlated proportions or percentages. \emph{Psychometrika}, 12(2):153-7.

Moskowitz, C.S., and Pepe, M.S. (2006). Comparing the predictive values of diagnostic tests: sample size and analysis for paired study designs. \emph{Clin Trials}, 3(3):272-9.

Pepe, M. (2003). The statistical evaluation of medical tests for classifcation and prediction. Oxford Statistical Science Series. Oxford University Press, 1st edition.

Zhou, X., Obuchowski, N., and McClish, D. (2011). Statistical Methods in Diagnostic Medicine. Wiley Series in Probability and Statistics. John Wiley & Sons, Hoboken, New Jersey, 2nd edition.
}

\seealso{
Data management functions: \code{\link{tab.1test}}, \code{\link{tab.paired}}, \code{\link{read.tab.paired}}, \code{\link{generate.paired}} and \code{\link{represent.long}}.

Computation of standard accuracy measures for a single test: \code{\link{acc.1test}} and \code{\link{acc.paired}}.

Comparison of sensitivity and specificity: \code{\link{sesp.mcnemar}}, \code{\link{sesp.exactbinom}} and \code{\link{sesp.diff.ci}}.

Comparison of positive and negative predictive values: \code{\link{pv.gs}}, \code{\link{pv.wgs}} and \code{\link{pv.rpv}}.

Comparison of positive and negative diagnostic likelihood ratios: \code{\link{dlr.regtest}} and \code{\link{DLR}}.
}

\examples{
data(Paired1) # Hypothetical study data 
hsd <- tab.paired(d=d, y1=y1, y2=y2, data=Paired1)
acc.paired(hsd)
sesp.mcnemar(hsd)
pv.rpv(hsd)
dlr.regtest(hsd)
}

\keyword{ package }