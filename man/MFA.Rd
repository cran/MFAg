\name{MFA}

\alias{MFA}

\title{Multiple Factor Analysis (MFA)}

\description{Performs Multiple Factor Analysis (MFA) method in variables groups. The variable groups can be quantitative, categorical, frequency or mixed data.}

\usage{MFA(Data, Grupo, TipoGrupo = rep("n", length(Grupo)), NomeGrupos = NULL)}
\arguments{
  \item{Data}{Data to be analyzed.}
  \item{Grupo}{Number of columns in order for each group in the order of data 'Date'.}
  \item{TipoGrupo}{"n" for numerical data - default.\cr
                   "c" for categorical data.\cr
                   "f" for frequency data.}
  \item{NomeGrupos}{Names for each group}
}

\value{
\item{MatrixG}{Matrix with the size of each group.}
\item{MatrixNG}{Matrix with the names of each group.}
\item{MatrixPLin}{Matrix with the values used to balance the lines of the matrix Z.}
\item{MatrixPCol}{Matrix with the values used to balance the columns of the matrix Z.}
\item{MatrixZ}{Concatenated matrix and balanced.}
\item{MatrixA}{Matrix with eigenvalues (variances).}
\item{MatrixU}{Matrix U of singular decomposition of the matrix Z.}
\item{MatrixV}{Matrix V of singular decomposition of the matrix Z.}
\item{MatrixF}{Global matrix of scores of factors where every rows are observations and columns components.}
\item{MatrixEFG}{Matrix scores of factors by Group.}
\item{MatrixCCP}{Correlation matrix of the principal component with the original variables.}
\item{MatrixEscVar}{Matrix of partial inertia / scores of variables.}
}

\references{
ABDESSEMED, L. and ESCOFIER, B.; Analyse factorielle multiple de tableaux de frequencies: comparaison avec l'analyse canonique des correspondences. \emph{Journal de la Societe de Statistique de Paris}, Paris, v. 137, n. 2, p. 3-18, 1996..

ABDI, H. Singular Value Decomposition (SVD) and Generalized Singular Value Decomposition (GSVD). In: SALKIND, N. J. (Ed.). \emph{Encyclopedia of measurement and statistics.} Thousand Oaks: Sage, 2007. p. 907-912.

ABDI, H.; VALENTIN, D. Multiple factor analysis (MFA). In: SALKIND, N. J. (Ed.). \emph{Encyclopedia of measurement and statistics.} Thousand Oaks: Sage, 2007. p. 657-663.

ABDI, H.; WILLIAMS, L. Principal component analysis. \emph{WIREs Computational Statatistics}, New York, v. 2, n. 4, p. 433-459, July/Aug. 2010.

ABDI, H.; WILLIAMS, L.; VALENTIN, D. Multiple factor analysis: principal component analysis for multitable and multiblock data sets. \emph{WIREs Computational Statatistics}, New York, v. 5, n. 2, p. 149-179, Feb. 2013.


BECUE-BERTAUT, M.; PAGES, J. A principal axes method for comparing contingency tables: MFACT. \emph{Computational Statistics & Data Analysis}, New York, v. 45, n. 3, p. 481-503, Feb. 2004

BECUE-BERTAUT, M.; PAGES, J. Multiple factor analysis and clustering of a mixture of quantitative, categorical and frequency data. \emph{Computational Statistics & Data Analysis}, New York, v. 52, n. 6, p. 3255-3268, Feb. 2008.

BENZECRI, J. Analyse de l'inertie intraclasse par l'analyse d'un tableau de contingence: intra-classinertia analysis through the analysis of a contingency table. \emph{Les Cahiers de l'Analyse des Donnees}, Paris, v. 8, n. 3, p. 351-358, 1983.

ESCOFIER, B. Analyse factorielle en reference a un modele: application a l'analyse d'un tableau d'echanges. \emph{Revue de Statistique Appliquee}, Paris, v. 32, n. 4, p. 25-36, 1984.

ESCOFIER, B.; DROUET, D. Analyse des differences entre plusieurs tableaux de frequence. \emph{Les Cahiers de l'Analyse des Donnees}, Paris, v. 8, n. 4, p. 491-499, 1983.

ESCOFIER, B.; PAGES, J. \emph{Analyse factorielles simples et multiples.} Paris: Dunod, 1990. 267 p.

ESCOFIER, B.; PAGES, J. \emph{Analyses factorielles simples et multiples:} objectifs, methodes et interpretation. 4th ed. Paris: Dunod, 2008. 318 p.

ESCOFIER, B.; PAGES, J. \emph{Comparaison de groupes de variables definies sur le meme ensemble d'individus:} un exemple d'applications. Le Chesnay: Institut National de Recherche en Informatique et en Automatique, 1982. 121 p.

ESCOFIER, B.; PAGES, J. Multiple factor analysis (AFUMULT package). \emph{Computational Statistics & Data Analysis}, New York, v. 18, n. 1, p. 121-140, Aug. 1994

GREENACRE, M.; BLASIUS, J. \emph{Multiple correspondence analysis and related methods.} New York: Taylor and Francis, 2006. 607 p.

PAGES, J. Analyse factorielle multiple appliquee aux variables qualitatives et aux donnees mixtes. \emph{Revue de Statistique Appliquee}, Paris, v. 50, n. 4, p. 5-37, 2002.

PAGES, J. Multiple factor analysis: main features and application to sensory data. \emph{Revista Colombiana de Estadistica}, Bogota, v. 27, n. 1, p. 1-26, 2004.

}

\author{
Paulo Cesar Ossani

Marcelo Angelo Cirillo
}

\seealso{\code{\link{Plot.MFA}}}

\examples{
data(DataMix) # set of mixed data
 
Matriz = DataMix[,2:ncol(DataMix)] 

rownames(Matriz) <- as.character(t(DataMix[1:nrow(DataMix),1]))

GroupNames = c("Notes Coffee/Work", "Training/Dedication", "Coffee")

MF <- MFA(Matriz, c(2,2,2), c("n","c","f"), GroupNames) # perfoms MFA

print("Variances of Principal Component:")
print(round(MF$MatrixA,2))

print("Partial matrix of inertia/scores variables:")
print(round(MF$MatrixEscVar,2))
}

\keyword{Multiple Factor Analysis}
\keyword{MFA}