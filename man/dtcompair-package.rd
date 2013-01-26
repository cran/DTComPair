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
Version: \tab 0.90\cr
Date: \tab 2013-01-26\cr
License: \tab GNU >=2\cr
}

The accuracy measures that can be compared in the present version are sensitivity, specificity and (positive and negative) predictive values. 

It is required that results from a binary gold-standard test are also available. 

Methods for comparison of sensitivity and specificity: McNemar test (McNemar, 1947) and exact binomial test.

Methods for comparison of (positive and negative) predictive values: generalized score statistic (Leisenring et al., 2000), weighted generalized score statistic (Kosinski, 2013) and comparison of relative predictive values (Moskowitz and Pepe, 2006).

Methods for comparison of (positive and negative) diagnostic likelihood ratios: not yet implemented.

Future versions of the package are going to include more methods for comparison of sensitivity, specificity and predictive values, as well as an approach for comparison of diagnostic likelihood ratios.

For a general introduction into the evaluation of diagnostic tests see e.g. Pepe (2003) or Zhou et al. (2011).
}

\author{
Christian Stock

Maintainer: Christian Stock <c.stock@dkfz.de>
}

\references{
Kosinski, A.S. (2013). A weighted generalized score statistic for comparison of predictive values of diagnostic tests. \emph{Stat Med}, in press.

Leisenring, W., Alonzo, T., and Pepe, M.S. (2000). Comparisons of predictive values of binary medical diagnostic tests for paired designs. \emph{Biometrics}, 56(2):345-51.

McNemar, Q. (1947). Note on the sampling error of the difference between correlated proportions or percentages. \emph{Psychometrika}, 12(2):153-7.

Moskowitz, C.S., and Pepe, M.S. (2006). Comparing the predictive values of diagnostic test: sample size and analysis for paired study designs. \emph{Clin Trials}, 3(3):272-9.

Pepe, M. (2003). The statistical evaluation of medical tests for classifcation and prediction. Oxford Statistical Science Series. Oxford University Press, 1st edition.

Zhou, X., Obuchowski, N., and McClish, D. (2011). Statistical Methods in Diagnostic Medicine. Wiley Series in Probability and Statistics. John Wiley & Sons, Hoboken, New Jersey, 2nd edition.

}

\seealso{
Data management functions: \code{\link{tab.1test}}, \code{\link{tab.paired}}, \code{\link{read.tab.paired}}, \code{\link{generate.paired}} and \code{\link{represent.long}}.

Computation of standard accuracy measures: \code{\link{acc.1test}} and \code{\link{acc.paired}}.

Comparison of sensitivity and specificity: \code{\link{sesp.mcnemar}} and \code{\link{sesp.exactbinom}}.

Comparison of (positive and negative) predictive values: \code{\link{pv.gs}}, \code{\link{pv.wgs}} and \code{\link{pv.rpv}}.
}

\examples{
data(Paired1) # Hypothetical study data 
hsd <- tab.paired(d=d, y1=y1, y2=y2, data=Paired1)
acc.paired(hsd)
sesp.mcnemar(hsd)
pv.rpv(hsd)
}

\keyword{ package }