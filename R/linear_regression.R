#' Linear Regression Model
#'
#' This function fits a simple linear regression model by estimating the coefficients for the intercept and slope of a line that best fits the input data.
#'
#' @param x A numeric vector of predictor values.
#' @param y A numeric vector of response values.
#'
#' @details The function estimates the linear relationship between the predictor \code{x} and response \code{y} by calculating the slope and intercept. The slope is calculated as the covariance of \code{x} and \code{y} divided by the variance of \code{x}. The intercept is calculated as the difference between the mean of \code{y} and the product of the slope with the mean of \code{x}.
#'
#' @return A list with the following components:
#' \item{intercept }{The estimated value of the intercept in the linear regression model.}
#' \item{slope }{The estimated value of the slope in the linear regression model.}
#'
#' @examples
#' # Example usage of linear_regression
#' x <- 1:10
#' y <- 2 * x + rnorm(10)
#' model <- linear_regression(x, y)
#' print(model)
#'
#' @export
linear_regression <- function(x, y) {
  if (length(x) != length(y)) {
    stop("x and y must have the same length")
  }
  x_mean <- mean(x)
  y_mean <- mean(y)
  beta_1 <- sum((x - x_mean) * (y - y_mean)) / sum((x - x_mean)^2)
  beta_0 <- y_mean - beta_1 * x_mean
  return(list(intercept = beta_0, slope = beta_1))
}
