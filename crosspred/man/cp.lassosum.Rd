% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cp.lassosum.R
\name{cp.lassosum}
\alias{cp.lassosum}
\title{lassosum with cross-prediction}
\usage{
cp.lassosum(cp.plink.linear, ..., LDblocks = cp.plink.linear$chr,
  pseudovalidation = FALSE, Method2 = TRUE, scale = TRUE,
  ref.bfile = NULL, destandardize = FALSE, max.ref.bfile.n = 5000,
  details = FALSE, keep.ref = NULL, exclude.ambiguous = FALSE,
  validate.function = function(x, y) cor(x, y, use = "complete"),
  plot = FALSE, trace = 1, cluster = NULL,
  list.of.lpipe.output = FALSE, list.of.lpipe.input = NULL,
  pipeline.FUN = lassosum.pipeline)
}
\arguments{
\item{cp.plink.linear}{An object from cp.plink.linear()}

\item{...}{Other parameters to pass to lassosum.pipeline()}

\item{LDblocks}{LD blocks. See \code{\link{lassosum.pipeline}}}

\item{pseudovalidation}{Should pseudovalidation be performed on each fold?}

\item{Method2}{Should Method 2 cross-prediction performed on each fold?}

\item{scale}{Should PGS be standardized before stacking?}

\item{ref.bfile}{bfile of reference panel (if different from that used in \code{\link{cp.plink.linear}})}

\item{destandardize}{Should coefficients be destandardized}

\item{max.ref.bfile.n}{Maximum number of samples to use in ref.bfile (to improve speed)}

\item{details}{Should a detailed output be given?}

\item{keep.ref}{Participants to keep in the reference panel (see \code{\link{parseselect}} for expected input)}

\item{exclude.ambiguous}{Should ambiguous SNPs be excluded?}

\item{validate.function}{Function for validating polygenic score}

\item{plot}{Whether a validation plot should be drawn}

\item{trace}{How much output should be given (0 for none)}

\item{cluster}{A "cluster" object from the parallel package for parallel processing}

\item{list.of.lpipe.output}{logical. see details.}

\item{list.of.lpipe.input}{A list of lassosum.pipeline organized by fold.}
}
\value{
A \code{cp.lassosum} object with the following elements
\item{pheno}{The vector of phenotype used for validation}
\item{fold}{Fold identifier}
\item{best.pgs}{PGS by Method 1}
\item{best.beta}{A data.frame of fold-specific beta by Method 1}
\item{best.lambda}{The best \code{lambda} chosen by Method 1} 
\item{best.s}{The best \code{s} chosen by Method 1}
\item{m2.fold}{The fold split used by Method 2}
\item{best.pgs.m2}{PGS by Method 2}
\item{best.beta.m2}{A data.frame of fold-specific beta by Method 2}
\item{split, beta.split}{for internal use}
}
\description{
We assume correlations are pre-calculated for the various 
folds, using PLINK or otherwise (cos PLINK is a lot faster).
}
\details{
If one wishes to carry out cross-prediction by chromosome, 
one can request set \code{list.of.lpipe.output=TRUE} to produce a list of 
lassosum.pipeline objects for each chromosome, combine them using 
\code{\link{organize.by.fold}}, and put them all together using 
\code{list.of.lpipe.input}.
}
