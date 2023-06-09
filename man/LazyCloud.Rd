% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LazyCloud.R
\name{LazyCloud}
\alias{LazyCloud}
\title{lazyCloud Function}
\usage{
LazyCloud(text)
}
\value{
returns a dataframe of characters
}
\description{
This function transform the text data in a wordcloud. It turns the string of texts (df$text)  Then it cleans the corpus by turning the text into lowercase, removing punction, number, and "SMART" stopwords. It then returns a simple frequency dataframe.
}
\examples{
lazyCloud(df$text)

}
\keyword{lazyCloud}
