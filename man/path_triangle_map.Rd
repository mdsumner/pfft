% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pfft.R
\name{path_triangle_map}
\alias{path_triangle_map}
\title{Triangles in paths}
\usage{
path_triangle_map(x, RTri)
}
\arguments{
\item{x}{PATH object}

\item{RTri}{RTriangle triangulation}
}
\value{
data frame mapping triangles to their containing paths
}
\description{
Build a map of triangles to paths (polygon ring)
}
\examples{
data("minimal_mesh", package = "silicate")
p <- silicate::PATH(minimal_mesh)
tr <- edge_RTriangle(p)
path_triangle_map(p, tr)

library(ggplot2)
library(dplyr)
library(purrr)
ggplot(path_triangle_map(p, tr) \%>\%
inner_join(reduce(p[c("path", "path_link_vertex", "vertex")], inner_join))) +
geom_polygon(aes(x_, y_, fill = path_)) + facet_wrap(~path_)

}
