
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hw04pDmando

<!-- badges: start -->

<!-- badges: end -->

The goal of hw04pDmando is to fulfill several deliverables asked for in
hw04 in Stat-413.

## Installation

You can install the released version of hw04pDmando by asking me
(Dmando) for a copy.

``` r
install.packages("hw04pDmando")
```

## Functionalities

``` r
library(hw04pDmando)
```

This package contains two functions. The first is myseq\_n which creates
a recursive function based on three inputs and then based on the length
solves the recursive function. The second is myseqplot which takes four
columns in a data set; three which represent inputs into the recursive
function and one which is the length and then the function creates a
line plot of the inputted data set with each data point being the output
of the row’s recursive function.

## Function 1

This an example of myseq\_n which creates and solves a recursive
function.

``` r
myseq_n(x = c(2, 8, 11), n = 4)
#> [1] 9.5
```

## Function 2

This is an example of myseqplot which takes a data set predisposed to
the prior recursive function and creates a line plot from it.

``` r
my_data <- tibble::tribble(
  ~x, ~y, ~z, ~n,
  2,4,3,3,
  2,4,3,4,
  2,4,3,5,
  2,4,3,6,
  2,4,3,7,
  2,4,3,8,
  2,4,3,9,
  2,4,3,10,
  2,4,3,12)

myseqplot(my_data)
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />
