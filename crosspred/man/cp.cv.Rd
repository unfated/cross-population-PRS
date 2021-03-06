% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cp.cv.R
\name{cp.cv}
\alias{cp.cv}
\title{Perform cross-validation based on results from cross-prediction}
\usage{
cp.cv(cp.plink.linear, cp.lassosum, return.lpipe = FALSE, ...)
}
\arguments{
\item{cp.plink.linear}{An object returned from cp.plink.linear()}

\item{cp.lassosum}{An object returned from cp.lassosum()}

\item{return.lpipe}{For internal use}
}
\value{
A validate.lassosum.pipeline object
}
\description{
Perform cross-validation based on results from cross-prediction
}
