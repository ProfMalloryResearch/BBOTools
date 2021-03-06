% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/decimalprices.R
\name{decimalprices}
\alias{decimalprices}
\title{Convert eighth of a cent grain prices to decimal}
\usage{
decimalprices(x)
}
\arguments{
\item{x}{is a column of a datatable of Grain contract BBO raw data from CME Group's Datamine.
it should have 4 characters: hundreds, tens, ones, and 8th of a cent
since futures quotes are in cents per bushel and the ticks are 8ths of a cent
this function will only work for corn prices < $100/bushel. At this date, grain prices
above $100/ bushel are unimaginable.}
}
\value{
The column of the orginal datatable with the TrPrice column converted to numeric in decimal format.
}
\description{
Convert eighth of a cent grain prices to decimal
}
\examples{
head(corn_110110$TrPrice)
temp <- decimalprices(corn_110110$TrPrice)
head(temp)
}

