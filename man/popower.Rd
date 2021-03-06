\name{popower}
\alias{popower}
\alias{posamsize}
\alias{print.popower}
\alias{print.posamsize}
\title{Power and Sample Size for Ordinal Response}
\description{
\code{popower} computes the power for a two-tailed two sample comparison
of ordinal outcomes under the proportional odds ordinal logistic
model.  The power is the same as that of the Wilcoxon test but with
ties handled properly.  \code{posamsize} computes the total sample size
needed to achieve a given power.  Both functions compute the efficiency
of the design compared with a design in which the response variable
is continuous.  \code{print} methods exist for both functions.  Any of the
input arguments may be vectors, in which case a vector of powers or
sample sizes is returned.  These functions use the methods of
Whitehead (1993).
}
\usage{
popower(p, odds.ratio, n, n1, n2, alpha=0.05)
\method{print}{popower}(x, \dots)
posamsize(p, odds.ratio, fraction=.5, alpha=0.05, power=0.8)
\method{print}{posamsize}(x, \dots)
}
\arguments{
\item{p}{
a vector of marginal cell probabilities which must add up to one.
The \code{i}th element specifies the probability that a patient will be in response level
\code{i}, averaged over the two treatment groups.
}
\item{odds.ratio}{
the odds ratio to be able to detect.  It doesn't
matter which group is in the numerator.
}
\item{n}{
total sample size for \code{popower}.  You must specify either \code{n} or
\code{n1} and \code{n2}.  If you specify \code{n}, \code{n1} and \code{n2} are set to \code{n/2}.
}
\item{n1}{
for \code{popower}, the number of subjects in treatment group 1
}
\item{n2}{
for \code{popower}, the number of subjects in group 2
}
\item{alpha}{
type I error
}
\item{x}{an object created by \code{popower} or \code{posamsize}}
\item{fraction}{
for \code{posamsize}, the fraction of subjects that will be allocated to group 1
}
\item{power}{
for \code{posamsize}, the desired power (default is 0.8)
}
\item{\dots}{unused}
}
\value{
a list containing \code{power} and \code{eff} (relative efficiency) for \code{popower},
or containing \code{n} and \code{eff} for \code{posamsize}.
}
\author{
Frank Harrell
\cr
Department of Biostatistics
\cr
Vanderbilt University School of Medicine
\cr
\email{f.harrell@vanderbilt.edu}
}
\references{
Whitehead J (1993): Sample size calculations for ordered categorical
data.  Stat in Med 12:2257--2271.


Julious SA, Campbell MJ (1996): Letter to the Editor.  Stat in Med 15:
1065--1066.  Shows accuracy of formula for binary response case.
}
\seealso{
\code{\link{bpower}}, \code{\link{cpower}}
}
\examples{
#For a study of back pain (none, mild, moderate, severe) here are the
#expected proportions (averaged over 2 treatments) that will be in
#each of the 4 categories:


p <- c(.1,.2,.4,.3)
popower(p, 1.2, 1000)   # OR=1.2, total n=1000
posamsize(p, 1.2)
popower(p, 1.2, 3148)
}
\keyword{htest}
\keyword{category}
\concept{power}
\concept{study design}
\concept{ordinal logistic model}
\concept{ordinal response}
\concept{proportional odds model}
