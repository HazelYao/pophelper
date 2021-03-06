% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pophelper.R
\name{plotQ}
\alias{plotQ}
\title{Generate barplots from qlists.}
\usage{
plotQ(qlist = NULL, imgoutput = "sep", clustercol = NA, grplab = NA,
  sortind = NA, subsetgrp = NA, grpmean = FALSE, useindlab = FALSE,
  labsep = " ", panelspacer = 0.06, sp = TRUE, splab = NA,
  splabsize = 4, splabcol = "grey30", splabface = "plain", spbgcol = NA,
  sppos = "right", labspacer = 0, labpanelheight = NA, labpos = 0.25,
  labsize = NA, labangle = NA, labjust = NA, labcol = "grey30",
  labalpha = 1, pointsize = NA, pointcol = "grey30",
  pointbgcol = "grey30", pointtype = "|", pointalpha = 1,
  linepos = 0.75, linethick = NA, linesize = NA, linecol = "grey30",
  linetype = 1, linealpha = 1, div = TRUE, divgrp = NA,
  divcol = "white", divtype = "21", divthick = NA, divsize = 0.25,
  divalpha = 1, legend = FALSE, legendlab = NA, legendpos = "left",
  legendkeysize = 4, legendtextsize = 3, imgtype = "png", height = NA,
  width = NA, dpi = 300, units = "cm", barsize = 1,
  theme = "theme_grey", font = "", na.rm = TRUE)
}
\arguments{
\item{qlist}{A qlist (list of dataframes). An output from \code{\link{readQ}}.}

\item{imgoutput}{A character with options: 'sep' or 'join'.If set to "sep", each run is plotted as separate image file. If set to "join", multiple runs are joined into a single image.}

\item{clustercol}{A vector of colours for clusters. If NA, colours are automatically generated. K=1 to K=12 are custom unique colours while K>12 are coloured by function \code{gplots::rich.colors()}.}

\item{grplab}{A named list of group labels equal to the length of individuals. See details.}

\item{sortind}{A character indicating how individuals are sorted. Default is NA (Same order of individuals as in input file). Other options are 'all' (sorting by values of all clusters), by any one cluster (eg. 'Cluster1') or 'labels' (sorting by individual labels). See details.}

\item{subsetgrp}{A character or character vector with group names to subset or reorder groups. Only applicable when \code{grplab} is in use. Default is NA. See details.}

\item{grpmean}{A logical indicating if q-matrix must be converted from individual values to group mean values. Applicable only when \code{grplab} is in use and only one set of group labels are used.}

\item{useindlab}{A logical indicating if individual labels must be read from the rownames of qlist dataframes and used as individual labels. Only useful with \code{sortind="label"} and not for display.}

\item{labsep}{A character used as separator when concatenating individual labels and group labels. Defaults to space \code{labsep=" "}.}

\item{panelspacer}{A numeric indicating the spacing between barplot panels in cm. Defaults to 0.06cm.}

\item{sp}{A logical indicating if strip panels on right side must be shown. Strip panel by default displays file name and K value. Defaults to TRUE.}

\item{splab}{A character or character vector denoting items displayed in the strip panels. Length must be equal to number of runs.}

\item{splabsize}{A numeric indicating the size of the strip panel label. Defaults to 4points.}

\item{splabcol}{A character indicating the colour of the strip panel label. Defaults to "grey30".}

\item{splabface}{A character indicating the font face of strip panel label. One of 'plain', 'italic', 'bold' or 'bold.italic'. Defaults to 'plain'. Applicable only when \code{sp=T}.}

\item{spbgcol}{A character denoting the background colour of the strip panel. Defaults to white.}

\item{sppos}{A character indicating position of strip panel. One of 'right' or 'left'. Defaults to 'right'.}

\item{labspacer}{A numeric indicating the space between the plot panels and the group label area in cm. Defaults to 0cm. Applicable only when \code{grplab} are in use.}

\item{labpanelheight}{A numeric indicating the height of the group label area in cm. Defaults to 0.4cm. Multiple group sets are multiplied by 0.4. Applicable only with \code{grplab}. See details.}

\item{labpos}{A numeric indicating the y position of the labels. Applicable only with group labels. Defaults to 0.}

\item{labsize}{A numeric indicating the size of the labels. Default range between 1.5 - 2.5 depending on number of individuals.}

\item{labangle}{A numeric indicating the angle/rotation of labels. 0 is horizontal while 90 is vertical. Default is 0.}

\item{labjust}{A numeric indicating the justification of labels. Defaults to 0.5 if labangle=0  or 1 if labangle between 20 and 135.}

\item{labcol}{A colour character for the colour of labels. Defaults to "grey30".}

\item{labalpha}{A numeric between 0 and 1 denoting transparency of the labels. Defaults to 1.}

\item{pointsize}{A numeric indicating the size of points on label marker line. Default range between 1.2 - 3.2 depending on number of individuals.}

\item{pointcol}{A colour character for the colour of points on the label marker line. Defaults to "grey30".}

\item{pointbgcol}{A colour character for the background of marker point for certain point types.}

\item{pointtype}{A character or number for the type of points on the label marker line. Defaults to |. Same as pch in standard R.}

\item{pointalpha}{A numeric between 0 and 1 denoting transparency of the points. Defaults to 1.}

\item{linepos}{A numeric indicating the y position of the label marker line and the points. Applicable only with group labels. Defaults to 1.}

\item{linethick}{Deprecated. Use argument 'linesize'.}

\item{linesize}{A numeric indicating the thickness of the label marker line. Default range between 0.3 and 0.6 depending on number of individuals.}

\item{linecol}{A colour character for the label marker line. Defaults to "grey30".}

\item{linetype}{A numeric indicating the type of line for marker line. Same as lty in standard R. Default value is 1.}

\item{linealpha}{A numeric between 0 and 1 denoting transparency of the marker line. Defaults to 1.}

\item{div}{A logical indicating if divider lines between groups must be drawn. Applicable only when group labels are in use.}

\item{divgrp}{A character or character vector with group label titles denoting which groups are used to draw divider lines.}

\item{divcol}{A character or hexadecimal colour denoting the colour of the divider line. Default is white.}

\item{divtype}{A numeric indicating the type of line for the divider line. Same as lty in standard R. Default value is '21'.}

\item{divthick}{Deprecated. Use argument 'divsize' instead.}

\item{divsize}{A numeric indicating the thickness of the divider line. Default is 0.25.}

\item{divalpha}{A numeric between 0 and 1 denoting transparency of the divider line. Defaults to 1.}

\item{legend}{A logical indicating if legend denoting cluster colours must be plotted. Defaults to FALSE.}

\item{legendlab}{A character or character vector to for legend cluster labels. Must be equal to max number of clusters.}

\item{legendpos}{A character 'right' or 'left' denoting position of the legend. Defaults to 'left'.}

\item{legendkeysize}{A numeric indicating size of the legend key. Defaults to 4.}

\item{legendtextsize}{A numeric indicating size of the legend text. Defaults to 3.}

\item{imgtype}{A character indicating output image file type. Possible options are "png","jpeg","tiff" or "pdf".}

\item{height}{A numeric indicating the height of a single run panel. By default, automatically generated based on number of runs. Separate plots use 1.8cm and joined plots use 1.2cm for single panel. See details.}

\item{width}{A numeric indicating the width of the whole plot. By default, automatically generated based on number of individuals. Ranges between 5cm and 30cm.}

\item{dpi}{A numeric indicating the image resolution in pixels per inch (PPI). Defaults to 300. If \code{imgtype="pdf"}, dpi is fixed at 300.}

\item{units}{A numeric indicating the units of height and width. Default set to "cm". Other options are 'px', 'in' or 'mm'.}

\item{barsize}{A numeric indicating the width of the bars. Defaults to 1.}

\item{theme}{A character indicating ggplot theme to be used. Use like "theme_grey", "theme_bw" etc.}

\item{font}{A character indicating font family to be used in the plots. Uses default system fonts by default for jpeg, png and tiff. Uses 'Helvetica' as default for pdf. Use package \code{extrafonts} to import custom fonts. See vignette for examples.}

\item{na.rm}{A logical indicating if NAs are removed from data, else \code{ggplot} prints warning messages for NAs. If set to TRUE, NAs are removed before plotting and \code{ggplot} NA warning is suppressed.}
}
\value{
Nothing is returned.
}
\description{
Generate separate or joined barplots (group-level) from qlists.
}
\details{
\strong{height}\cr
Argument \code{height} denotes the height of one run panel. With joined plots, the \code{height} is multiplied by number of runs. The height does not include label panel. The \code{labpanelheight} is used to define the full height of the lab panel. If \code{labpanelheight} is not provided, it is calculated based on the number of group label sets.
final_image_height = (height*num_of_runs)+labpanelheight
It is possible to set either height or width and leave other as default.\cr

\strong{sortind}\cr
This argument takes one character as input.  Default NA means individuals are 
plotted in the same order as input. Individuals can be ordered by any one cluster. 
For ex. \code{sortind="Cluster1"} or \code{sortind="Cluster2"}.
To order by all clusters as the 'Sort by Q' option in STRUCTURE software, 
use \code{sortind="all"}. When using \code{sortind="label"}, individuals are
sorted by individual labels (along with grplab if present). These individual
labels are not displayed in \code{plotQ()} but can be displayed using \code{plotQMultiline()}.
When using \code{sortind} with \code{grplab}, individuals
are sorted within the groups.\cr

\strong{grplab}\cr
\code{grplab} must be a list. One or more label sets can be provided. Each 
label set must be a character vector equal to the number of individuals 
present in the qlist. 
For example, we can provide one set of grp labels as such:\cr
\code{labs1 <- c("Pop A","Pop A","Pop B","Pop B")}\cr
\code{grplab=list("grp"=labs1)}\cr

A second set of grp labels can be provided as such:
\code{labs2 <- c("Loc 1","Loc 1","Loc 2","Loc 3")}\cr
\code{grplab=list("population"=labs1,"location"=labs2)}\cr

\strong{subsetgrp}\cr
This argument takes one or more characters as input. Use only group labels used in the \code{grplab} vector. For ex. In case of two grps in order 'Pop A' and 'Pop B',
use \code{subsetgrp=c("Pop B","Pop A")} to change order of groups. Use \code{subsetgrp="Pop B"} to subset only Pop B.\cr

See the \href{http://royfrancis.github.io/pophelper/}{vignette} for more details.
}
\examples{
slist <- readQ(list.files(path=system.file("files/structure",package="pophelper"),full.names=TRUE))

# plot one separate figure
plotQ(qlist=slist[1])

# plot two separate figures
plotQ(qlist=slist[1:2])

# plot a joined figure with multiple plots
plotQ(qlist=slist[1:2],imgoutput="join")

# sort individuals
plotQ(qlist=slist[c(1,3)],sortind="all")
plotQ(qlist=slist[c(1,3)],sortind="Cluster1")
plotQ(qlist=slist[c(1,3)],sortind="label")
plotQ(qlist=slist[c(1,3)],sortind="all",imgoutput="join")

# read group labels
grps1 <- read.delim(system.file("files/structuregrplabels.txt", package="pophelper"), header=F,stringsAsFactors=F)

# plot with labels
plotQ(qlist=slist[1],grplab=list("grps\\n"=grps1$V1))
plotQ(qlist=slist[1:2],grplab=list("grps\\n"=grps1$V1),imgoutput="join")

# sort within groups
plotQ(qlist=slist[1:2],grplab=list("grps\\n"=grps1$V1),imgoutput="join",sortind="Cluster1")

# reorder groups
plotQ(qlist=slist[1],grplab=list("grps\\n"=grps1$V1),subsetgrp=c("Pop B","Pop A"))

# plot two sets of labels
grps2 <- read.delim(system.file("files/structuregrplabels2.txt", package="pophelper"), header=F,stringsAsFactors=F)
plotQ(qlist=slist[1],grplab=list("grps\\n"=grps1$V1,"grps2\\n"=grps2$V1))
plotQ(qlist=slist[1:2],grplab=list("grps2\\n"=grps2$V1,"grps\\n"=grps1$V1),imgoutput="join",height=1.5,labpanelheight=1.2)

# plot a custom dataframe
temp <- list("custom"=data.frame(Cluster1=c(0.2,0.3,0.6,0.8),Cluster2=c(0.8,0.7,0.4,0.2)))
plotQ(temp)

}
\seealso{
\code{\link{plotQMultiline}}
}
