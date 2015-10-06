\name{GSVD}

\alias{GSVD}

\title{Generalized Singular Value Decomposition (GSVD)}

\description{Given the matrix \eqn{A} of order \eqn{nxm}, the Generalized Singular Value Decomposition matrix (GSVD), involves the utilization of two sets of positive square matrix of order \eqn{nxn} and \eqn{mxm}, respectively. These two matrices express imposed restrictions, respectively, in rows and columns of \eqn{A}.}

\usage{GSVD(Data, PLin = NULL, PCol = NULL)}
\arguments{
  \item{Data}{Matrix used for decomposition.}
  \item{PLin}{Vector with weights for the rows.}
  \item{PCol}{Vector with weights for the columns.}
}

\details{If not used Plin or PCOL, is calculated as the singular value decomposition usual.}

\value{
 \item{d}{Eigenvalues, i.e., row vector with the singular value decomposition.}
 \item{u}{Eigenvectors referring lines.}
 \item{v}{Eigenvectors referring column.}
}

\references{ABDI, H. Singular Value Decomposition (SVD) and Generalized Singular Value Decomposition (GSVD). In: SALKIND, N. J. (Ed.). \emph{Encyclopedia of measurement and statistics.} Thousand Oaks: Sage, 2007. p. 907-912.}

\author{
Paulo Cesar Ossani

Marcelo Angelo Cirillo
}

\examples{
M = matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), nrow = 4, ncol = 3)

svd(M)  # Singular value decomposition usual

GSVD(M) # GSVD with the same previous results 

# GSVD with weights for rows and columns
GSVD(M, PLin = c(0.1,0.5,2,1.5), PCol = c(1.3,2,0.8)) 
}

\keyword{Generalized Singular Value Decomposition }
\keyword{GSVD}
