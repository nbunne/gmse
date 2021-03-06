% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{ind_to_land}
\alias{ind_to_land}
\title{Plot resource position on a landscape image output}
\usage{
ind_to_land(inds, land)
}
\arguments{
\item{inds}{A single time step of resources from GMSE}

\item{land}{The landscape array on which interactions between resources and agents occur}
}
\value{
Returns a landscape in which resources are embedded for a timestep for plotting purposes
}
\description{
Places individuals (simulated resources) on the landscape for plotting.
}
\examples{
\dontrun{
indis  <- ind_to_land(inds=res_t, land=land1);
}
}
