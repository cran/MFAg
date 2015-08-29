\name{IM}

\alias{IM}

\title{Indicator Matrix}

\description{In Indicator Matrix elements are arranged in the form of \emph{dummy} variables, in other words, 1 for a category chosen as variable response and 0 for the other categories of the same variable.}

\usage{IM(Data, Names = "s")}

\arguments{
\item{Data}{Categorical data}
\item{Names}{"s" to include the variable names in the levels of the Matrix Indicator - default\cr
             "n" don't include}
}

\value{\item{Dados}{Returns converted data in Indicator Matrix.}}

\references{RENCHER, A.C.; \emph{Methods of Multivariate Analysis.} 2th. ed. New York: J.Wiley, 2002. 708 p.}

\author{
Paulo Cesar Ossani

Marcelo Angelo Cirillo
}

\examples{
Date = matrix(c("S","S","N","N",1,2,3,4,"N","S","T","N"), nrow = 4, ncol = 3)

IM(Date, "n")

data(DataQuali) # Set of qualitative data

IM(DataQuali)
}

\keyword{Dummy variables}
\keyword{Matrix Indicator}
