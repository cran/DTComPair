\name{sesp.mcnemar}
\alias{sesp.mcnemar}
\title{McNemar Test for Comparison of Sensitivities and Specificities}
\description{Performs a McNemar Test for comparison of sensitivities and specificities of two binary diagnostic tests in a paired study design.
}
\usage{
sesp.mcnemar(tab, alpha, cont.corr)
}

\arguments{
  \item{tab}{An object of class \code{\link{tab.paired}}.
}
  \item{alpha}{Significance level alpha for 100(1-alpha)\%-confidence intervals for the difference in sensitivity and specificity, the default is 0.05.
}
  \item{cont.corr}{A logical value indicating whether the continuity correction according to Yates (1937) should be used, the default is \code{FALSE}.
}
}

\details{ 
The test is performed as described by McNemar (1947).

Calculation of Wald confidence intervals for the differences in sensitivities and specificities follows Agresti (2007).

For small samples the coverage probability is closer to the nominal confidence level when the continuity correction according to Yates (1934) is used. 
}

\value{
A list containing:
\item{sensitivity}{A list containing 
   \code{test1} (sensitivity of test 1), 
   \code{test2} (specificity of test 2), 
   \code{diff} (the difference in sensitivity, computed as \code{test2 - test1}), 
   \code{diff.cl} (lower and upper confidence limit of \code{diff}), 
   the \code{test.statistic} 
   and the corresponding \code{p.value}. }
\item{specificity}{A list containing 
   \code{test1} (specificity of test 1), 
   \code{test2} (specificity of test 2), 
   \code{diff} (the difference in specificity, computed as \code{test2 - test1}), 
   \code{diff.cl} (lower and upper confidence limit of \code{diff}), 
   the \code{test.statistic} 
   and the corresponding \code{p.value}. }
\item{continuity.correction}{A logical value indicating whether the continuity correction was applied.}
\item{method}{The name of the method used to compare sensitivity and specificity, here \dQuote{\code{mcnemar}}. }
\item{alpha}{The level alpha used to compute 100(1-alpha)\%-confidence intervals, the default is 0.05.}
}

\references{
McNemar, Q. (1947). Note on the sampling error of the difference between correlated proportions or percentages. \emph{Psychometrika}, 12(2):153-7.

Agresti, A. (2007). An Introduction to Categorical Data Analysis. John Wiley and Sons, 2nd edition.

Yates, F. (1934). Contingency table involving small numbers and the x2 [chi-squared] test. \emph{Supplement to the Journal of the Royal Statistical Society}, 1(2): 217-35.
}

\seealso{
\code{\link{sesp.exactbinom}} and \code{\link{tab.paired}}.
}

\examples{
data(Paired1) # Hypothetical study data
ftable(Paired1)
paired.layout <- tab.paired(d=d, y1=y1, y2=y2, data=Paired1)
paired.layout 
mcnem.results <- sesp.mcnemar(paired.layout)
str(mcnem.results)
mcnem.results
mcnem.results$sensitivity["p.value"]
}
