% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/initialise.R
\name{make_interaction_table}
\alias{make_interaction_table}
\title{Initialise array of resource and landscape-level interactions.}
\usage{
make_interaction_table(RESOURCES, LAND)
}
\arguments{
\item{RESOURCES}{The resources array produced by the resource function within GMSE}

\item{LAND}{The landscape array on which interactions between resources and agents occur}
}
\description{
Initialise array of resource and landscape-level interactions.
}
\examples{
\dontrun{
interaction_tabl <- make_interaction_table(starting_resources, LANDSCAPE_r);
}
}
