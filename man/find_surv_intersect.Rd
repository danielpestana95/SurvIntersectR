% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_surv_intersect.R
\name{find_surv_intersect}
\alias{find_surv_intersect}
\title{Find Intersection Points of Survival Curves}
\usage{
find_surv_intersect(ggsurvplot_object)
}
\arguments{
\item{ggsurvplot_object}{A ggsurvplot object created by the `survminer` package.}
}
\value{
A data frame containing the coordinates of the intersection points, or NULL if there are no intersections.
}
\description{
This function finds the intersection points of survival curves in a ggsurvplot object.
}
