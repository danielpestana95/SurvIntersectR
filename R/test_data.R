#' Example Data for Non-Intersecting Survival Curves
#'
#' A dataset containing survival times, status, and groups "High" and "Low" for survival curves that don't intersect.
#'
#' @format A data frame with 200 rows and 3 variables:
#' \describe{
#'   \item{time}{Survival time}
#'   \item{status}{Survival status (0 = censored, 1 = event)}
#'   \item{group}{Group variable (High, Low)}
#' }
"data_no_intersect"

#' Example Data for Intersecting Survival Curves
#'
#' A dataset containing survival times, status, and groups "Female" and "Male" for survival curves that intersect.
#'
#' @format A data frame with 200 rows and 3 variables:
#' \describe{
#'   \item{time}{Survival time}
#'   \item{status}{Survival status (0 = censored, 1 = event)}
#'   \item{group}{Group variable (Female, Male)}
#' }
"data_intersect"