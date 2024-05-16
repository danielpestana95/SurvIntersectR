# SurvIntersectR
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.11206042.svg)](https://doi.org/10.5281/zenodo.11206042)

**SurvIntersectR** is an R package providing tools to check if survival curves intersect and to find their intersection points. These tools are particularly useful for survival analysis in biomedical research and other fields where comparing survival rates between different groups is necessary.

Features
 - Intersection Detection: Determine whether two survival curves intersect.
 - Intersection Points: Identify the exact points where the survival curves intersect.
 - Ease of Use: Simple functions that integrate seamlessly with survminer and ggplot2.

## Installation
To install the development version of SurvIntersectR from GitHub, use the following commands in R:
```r
# Install devtools if you haven't already
install.packages("devtools")

# Install SurvIntersectR from GitHub
devtools::install_github("SurvIntersectR/SurvIntersectR")
```

## Basic Usage Example
```r
library(survminer)
library(survival)
library(SurvIntersectR)

# Example data
data("data_no_intersect", package = "SurvIntersectR")
data("data_intersect", package = "SurvIntersectR")

# Fit survival models
fit1 <- survfit(Surv(time, status) ~ group, data = data_no_intersect)
fit2 <- survfit(Surv(time, status) ~ group, data = data_intersect)

# Plot survival curves
plot1 <- ggsurvplot(fit1, data = data_no_intersect)
plot2 <- ggsurvplot(fit2, data = data_intersect)

# Check intersections
surv_curve_intersect(plot1)  # FALSE
surv_curve_intersect(plot2)  # TRUE

# Find intersection points
find_surv_intersect(plot2)
```

## License
This project is licensed under the MIT License.

## Citation
If you use SurvIntersectR in your research, please cite it as follows:

> Pestana, D., Cardoso, C., & Castelo-Branco, P. (2024). SurvIntersectR: Tools for Detecting Survival Curve Intersections (v0.1.0). Zenodo. https://doi.org/10.5281/zenodo.11206042
