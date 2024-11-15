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
