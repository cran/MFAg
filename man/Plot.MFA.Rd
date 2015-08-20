\name{Plot.MFA}

\alias{Plot.MFA}

\title{Graphics Multiple Factors Analysis (MFA)}

\description{Graphics Multiple Factors Analysis (MFA).}

\usage{
Plot.MFA(MFA,Titles = matrix(NA,1,3), PosLeg = 2, BoxLeg = "s", Color = "s", NamArr = "n")}
 
\arguments{
  \item{MFA}{Function data MFA.}
  \item{Titles}{Titles for graphics. If not set takes standard text.}
  \item{PosLeg}{1 for legend in the upper left corner.\cr
                2 for legend in the upper right corner - default.\cr
                3 for legend in the bottom right corner.\cr
                4 for legend in the bottom left corner.}
  \item{BoxLeg}{"s" to put frame on the legend - defaul.\cr
                "n" not to put frame on the legend.}
  \item{Color}{"s" for colored graphs - default.\cr
               "n" for graphs in black and white.}
  \item{NamArr}{"s" to put points names in the cloud around the
                    centroid in graph corresponding to global
                    analysis of individuals and variables.\cr
                "n" otherwise - default.}
}

\value{Returns several graphics.}

\author{
Paulo Cesar Ossani

Marcelo Angelo Cirillo
}

\seealso{\code{\link{MFA}}}

\examples{
data(DataMix) # set of mixed data

Matriz = DataMix[,2:ncol(DataMix)] 

rownames(Matriz) <- as.character(t(DataMix[1:nrow(DataMix),1]))

GroupNames = c("Notes Coffee / Work "," Training / Dedication "," Coffee ")
           
MF <- MFA(Matriz, c(2,2,2), TipoGrupo = c("n","c","f"), GroupNames) # performs MFA

Titulos = c("Observations", "Observations/Variables", "Inertia Groups Variables")

Plot.MFA(MF, Titulos, 2, "n", "s", "n") # several screen graphics
}

\keyword{Multiple Factors Analysis}
\keyword{MFA}
\keyword{MFACT}
