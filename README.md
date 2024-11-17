# **mylinear**

`mylinear` is an R package that provides a simple yet efficient implementation of a linear regression model. It is designed as a lightweight tool for educational purposes and for users who want to understand the fundamentals of linear regression modeling in R.

---

## **Features**

- **Custom Linear Regression Function**: Offers the `linear_regression()` function to calculate the slope, intercept, and predictions for a given dataset.
- **Performance**: Lightweight implementation with faster execution and lower memory usage compared to R's built-in `lm()` function.
- **Educational Tool**: Includes a vignette explaining the core concepts of linear regression and how the package works.
- **Benchmarking and Visualization**: Compare `linear_regression()` with R's `lm()` using included examples and visualizations.

---

## **Installation**

To install `mylinear` from GitHub, follow these steps:

1. Install the `devtools` package if you haven’t already:







   install.packages("devtools")
   
2. Install mylinear directly from GitHub:
devtools::install_github("miaowyyy/mylinear")

# Load the package
library(mylinear)

```


## Useage
For a detailed guide, examples, and explanation of the package, view the vignette:
```r
browseVignettes("mylinear")
```

## License
This package is licensed under the MIT License. For more details, see the LICENSE file.
