# File: tests/testthat/test-surv_curve_functions.R

library(testthat)
library(SurvIntersectR)
library(survminer)
library(survival)

test_that("surv_curve_intersect detects non-intersecting curves correctly", {
  data("data_no_intersect", package = "SurvIntersectR")
  fit1 <- survfit(Surv(time, status) ~ group, data = data_no_intersect)
  plot1 <- ggsurvplot(fit1, data = data_no_intersect)
  result1 <- surv_curve_intersect(plot1)

  expect_false(result1)
})

test_that("surv_curve_intersect detects intersecting curves correctly", {
  data("data_intersect", package = "SurvIntersectR")
  fit2 <- survfit(Surv(time, status) ~ group, data = data_intersect)
  plot2 <- ggsurvplot(fit2, data = data_intersect)
  result2 <- surv_curve_intersect(plot2)

  expect_true(result2)
})

test_that("find_surv_intersect finds intersection points correctly", {
  data("data_intersect", package = "SurvIntersectR")
  fit2 <- survfit(Surv(time, status) ~ group, data = data_intersect)
  plot2 <- ggsurvplot(fit2, data = data_intersect)
  result2 <- find_surv_intersect(plot2)

  expect_true(nrow(result2) > 0)
})

test_that("find_surv_intersect returns NULL for non-intersecting curves", {
  data("data_no_intersect", package = "SurvIntersectR")
  fit1 <- survfit(Surv(time, status) ~ group, data = data_no_intersect)
  plot1 <- ggsurvplot(fit1, data = data_no_intersect)
  result1 <- find_surv_intersect(plot1)

  expect_null(result1)
})
