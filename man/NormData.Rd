\name{NormData}

\alias{NormData}

\title{Normalizes the data}

\description{Function that normalizes the data globally or per column.}

\usage{NormData(Data, Type = 1)}
\arguments{
  \item{Data}{Data to be standardized.}
  \item{Type}{1 global normalizes - default.\cr
              2 normalizes per column.}
}

\value{\item{DataNorm}{Normalized data}}

\author{
Paulo Cesar Ossani

Marcelo Angelo Cirillo
}

\examples{
data(DataQuan) # set of quantitative data

Dat <- DataQuan[,2:8]

Resp = NormData(Dat, Type = 1) # normalizes the data globally

Resp # data globally normalized

sd(Resp)   # global standard deviation

mean(Resp) # mean global


Resp = NormData(Dat, Type = 2) # normalizes the data by column

Resp # Data normalized by column

apply(Resp, 2, sd) # standard deviation for column

colMeans(Resp)     # mean of columns
}

\keyword{Normalizes the data}
