\name{Plot.MFA}

\alias{Plot.MFA}

\title{Graphics Multiple Factors Analysis (MFA)}

\description{Graphics Multiple Factors Analysis (MFA).}

\usage{
Plot.MFA(MFA,Titles = matrix(NA,1,3), PosLeg = 2, BoxLeg = "s", Color = "s", NamArr = "n")}
 
\arguments{
  \item{MFA}{Data of the function MFA.}
  \item{Titles}{Titles for the plots. If it is not defined, it takes on standard text.}
  \item{PosLeg}{1 for caption on the left upper corner;\cr
                2 for caption on the right upper corner - default;\cr
                3 for caption on the right lower corner;\cr
                4 for caption on the left lower corner.}
  \item{BoxLeg}{"s" to place frame on the caption - default;\cr
                "n" does not place frame on the caption.}
  \item{Color}{"s" for colored plots - default;\cr
               "n" for black and white plots.}
  \item{NamArr}{"s" "s" to put point names in the cloud around the
                  centroid on the plot correspondent to the
                  global analysis of the individuals and variables;\cr
                "n" Otherwise - default.}
}

\value{Returns several plots.}

\author{
Paulo Cesar Ossani

Marcelo Angelo Cirillo
}

\seealso{\code{\link{MFA}}}

\examples{
data(DataMix) # set of mixed data of the cooperatives

Matriz = DataMix[,2:ncol(DataMix)] 

rownames(Matriz) <- as.character(t(DataMix[1:nrow(DataMix),1]))

GroupNames = c("Notes Coffee / Work","Training / Dedication","Coffee")
           
MF <- MFA(Matriz, c(2,2,2), TipoGrupo = c("n","c","f"), GroupNames) # performs MFA

Titulos = c("Cooperatives/Tasters", "Cooperatives/Tasters and Variables",
             "Inertia of the groups of variables")
                   
Plot.MFA(MF, Titulos, 2, "n", "s", "n") # several screen plots
}

\keyword{Multiple Factors Analysis}
\keyword{MFA}
\keyword{MFACT}
