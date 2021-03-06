\name{HighlightWeaveLatex}
\encoding{utf-8}
\Rdversion{1.1}
\alias{HighlightWeaveLatex}
\title{
	Sweave driver performing syntax highlighting 
}
\description{
Sweave driver using the highlight latex renderer to perform syntax 
highlighting of input R code in sweave chunks.
}
\usage{
HighlightWeaveLatex(
	boxes=FALSE, bg = rgb( 0.95,0.95,0.95, max = 1 ), border = "black", 
	highlight.options = list( boxes = boxes, bg = bg, border = border ) )
}
\arguments{
  \item{boxes}{if \code{TRUE}, code blocks are wrapped in boxes. }
  \item{bg}{background color for code boxes. }
  \item{border}{color to use for the border of code boxes. }
  \item{highlight.options}{Can be used instead of the other arguments to 
  	  set the \code{boxes}, \code{bg} and \code{border} settings.
  }
}

\details{
This sweave driver is very similar to standard driver that is 
included in \samp{utils}. The difference is that input R code and 
verbatim output is rendered using \code{highlight} enabling 
syntax highlighting of R code. 

Instead of using \samp{Sinput} and \samp{Soutput} commands, this 
driver uses \samp{Hinput} and \samp{Houtput} and defines these commands
at the very beginning of the document, letting the user the option 
to overwrite them as necessary. 

Latex boxes defined by the latex renderer (\code{\link{renderer_latex}})
and style definitions needed are also written at the beginning 
of the document.

Because highlight does not use verbatim environments, the user
of this driver can freely redefine the \samp{Hinput}, \samp{Houtput}
and \samp{Hchunk} environments to achieve greater control
of the output latex document than with the standard driver.
}
\value{
A sweave driver, suitable for the \samp{driver} argument of
\code{\link[utils]{Sweave}}
}
\references{
Friedrich Leisch. Sweave: Dynamic generation of statistical reports using 
literate data analysis. In Wolfgang Härdle and Bernd Rönz, 
editors, Compstat 2002 - Proceedings in Computational Statistics, pages 575-580. 
Physica Verlag, Heidelberg, 2002. ISBN 3-7908-1517-9
}
\author{
Romain Francois <romain@r-enthusiasts.com>
}
\seealso{
the standard sweave latex driver: \code{\link{RweaveLatex}}
}
\examples{
\dontrun{
# using the driver on the grid vignette
require( grid )
v <- vignette( "grid", package = "grid" )$file
file.copy( v, "grid.Snw" )
Sweave( "grid.Snw", driver= HighlightWeaveLatex() )
}
}
\keyword{ manip }

