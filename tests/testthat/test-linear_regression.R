test_that("linear_regression computes correct coefficients", {
  x <- 1:10
  y <- 2 * x + 3

  # Run the linear_regression function
  result <- linear_regression(x, y)

  # Test intercept and slope
  expect_equal(result$intercept, 3)
  expect_equal(result$slope, 2)
})

test_that("linear_regression handles unequal lengths", {
  x <- 1:10
  y <- 1:9

  # Expect an error when x and y lengths differ
  expect_error(linear_regression(x, y), "x and y must have the same length")
})

test_that("linear_regression works with constant y", {
  x <- 1:10
  y <- rep(5, 10)

  # Run the linear_regression function
  result <- linear_regression(x, y)

  # Test that slope is zero and intercept is correct
  expect_equal(result$intercept, 5)
  expect_equal(result$slope, 0)
})

