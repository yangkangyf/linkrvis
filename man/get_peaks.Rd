% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/peaks.R
\name{get_peaks}
\alias{get_peaks}
\title{Output Linkage Regions}
\usage{
get_peaks(d, t = 0, valcol = "lod", annot)
}
\arguments{
\item{d}{An object of class \code{\link{partbl}}, \code{link{npartbl}},
\code{link{famlod}} or \code{link{fampar}}.
Can also be a data.frame with two numeric columns
that make sense as 'position' and 'value'.}

\item{t}{A length-one numeric vector specifying the threshold to be used.}

\item{valcol}{A length-one character vector giving the name of the column in
\code{d} containing the values.}

\item{annot}{A data.frame with chr, cm and bp columns.}
}
\value{
A data.frame where each row contains summary information
        about contiguous regions in \code{d} where 'value' >= \code{t}.
        If no regions achieve the specified
        \code{t}, returns NULL.
}
\description{
Given a data.frame \code{d} with 'position' and 'value' columns
output those contiguous regions where 'value' > \code{t}.
}
\details{
For objects of class \code{\link{partbl}}, \code{link{npartbl}},
\code{link{famlod}} or \code{link{fampar}}, the main data frame
containing the LOD scores per marker is used.
}
\examples{
partbl <- partbl::partbl("merlin_10_famA-parametric.tbl")
get_peaks(partbl)

}

