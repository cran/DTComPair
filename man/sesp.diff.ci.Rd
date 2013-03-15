\name{sesp.diff.ci}
\alias{sesp.diff.ci}
\title{Confidence Intervals for Differences in Sensitivity and Specificity}
\description{Calculates confidence intervals for differences in sensitivity and specificity of two binary diagnostic tests in a paired study design.
}
\usage{
sesp.diff.ci(tab, ci.method, alpha, cont.corr)
}

\arguments{
  \item{tab}{An object of class \code{\link{tab.paired}}.
  }
  \item{ci.method}{The available methods are \dQuote{\code{wald}}, \dQuote{\code{agresti-min}}, \dQuote{\code{bonett-price}}, and \dQuote{\code{tango}}, the default is \dQuote{\code{wald}}.
  }
  \item{alpha}{Significance level alpha for 100(1-alpha)\%-confidence intervals for the difference in sensitivity and specificity, the default is 0.05.
  }
  \item{cont.corr}{A logical value indicating whether the continuity correction should be used (only available for \code{ci.method="wald"}), the default is \code{FALSE}.   
  }
}

\details{ 
details
}

\value{
A list containing:
\item{sensitivity}{A vector containing 
   \code{test1} (the sensitivity of test 1), 
   \code{test2} (the specificity of test 2), 
   \code{diff} (the difference between the two sensitivities, computed as \code{test2 - test1}), 
   \code{diff.se} (the standard error of \code{diff}), 
   \code{diff.lcl} (the lower confidence limit of \code{diff}) and 
   \code{diff.ucl} (the upper confidence limit of \code{diff}).
   }
\item{specificity}{A vector containing 
   \code{test1} (specificity of test 1), 
   \code{test2} (specificity of test 2), 
   \code{diff} (the difference between the two specificities, computed as \code{test2 - test1}), 
   \code{diff.se} (the standard error of \code{diff}), 
   \code{diff.lcl} (the lower confidence limit of \code{diff}) and 
   \code{diff.ucl} (the upper confidence limit of \code{diff}).
   }
\item{ci.method}{The name of the method used to calculate confidence intervals. }
\item{alpha}{The level alpha used to compute 100(1-alpha)\%-confidence intervals.}
\item{cont.corr}{A logical value indicating whether the continuity correction was applied.}
}

\references{
Altman, D.G. (1991). Practical statistics for medical research. Chapman & Hall, London.

Agresti, A. and Min, Y. (2005) Simple improved confidence intervals for comparing matched proportions. \emph{Stat Med}, 24(5): 729-40.

Bonett, D.G., and Price, R.M. (2011). Adjusted Wald confidence intervals for a difference of binomial proportions based on paired data. \emph{J Educ Behav Stat}, 37(4): 479-488.

Fleiss, J.L., Levin, B., and Paik, M.C. (2003). Statistical methods for rates and proportions. John Wiley & Sons, Hoboken, New Jersey, 3rd edition.

Tango, T. (1998) Equivalence test and confidence interval for the difference in proportions for the paired-sample design. \emph{Stat Med}, 17(8): 891-908.
}

%\seealso{
%\code{\link{sesp.exactbinom}} and \code{\link{tab.paired}}.
%}

\examples{
library(DTComPair)
t1 <- read.tab.paired(18, 14, 0, 18,
                      18, 12, 2, 18)
t1
sesp.diff.ci(t1, ci.method="wald", cont.corr=FALSE)
sesp.diff.ci(t1, ci.method="wald", cont.corr=TRUE)
sesp.diff.ci(t1, ci.method="agresti-min")
sesp.diff.ci(t1, ci.method="tango")
}
