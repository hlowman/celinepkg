
<!-- README.md is generated from README.Rmd. Please edit that file -->

# celinepkg

<!-- badges: start -->

<!-- badges: end -->

The goal of celinepkg is to work through the various examples of the “R
Packages” textbook 2nd version by Hadley Wickham and Jennifer Bryan. The
coding portion of this package began in earnest in Chapter 2 and
continues through the end of the book.

The first function in this package is fbind().

The second function in this package is fcount().

## Installation

You can install the released version of celinepkg from
[CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("hlowman/celinepkg")
#> Downloading GitHub repo hlowman/celinepkg@master
#> Error in utils::download.file(url, path, method = method, quiet = quiet,  : 
#>   cannot open URL 'https://api.github.com/repos/hlowman/celinepkg/tarball/master'
## installs package
```

## Examples

``` r
library(celinepkg)
```

This is a basic example of the first function fbind():

``` r
fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])
#> [1] setosa     versicolor virginica  ctrl       trt1       trt2      
#> Levels: ctrl setosa trt1 trt2 versicolor virginica
## binds two factors
```

This is a basic example of the second function fcount():

``` r
fcount(iris$Species)
#> # A tibble: 3 x 2
#>   f              n
#>   <fct>      <int>
#> 1 setosa        50
#> 2 versicolor    50
#> 3 virginica     50
## makes a sorted frequency table for a factor
```

Here is what Jenny wrote:

Binding two factors via `fbind()`:

``` r
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
```

Simply catenating two factors leads to a result that most don’t expect.

``` r
c(a, b)
#> [1] 1 3 4 2 1 3 4 2
```

The `fbind()` function glues two factors together and returns factor.

``` r
fbind(a, b)
#> [1] character hits      your      eyeballs  but       integer   where it 
#> [8] counts   
#> Levels: but character counts eyeballs hits integer where it your
```

Often we want a table of frequencies for the levels of a factor. The
base `table()` function returns an object of class `table`, which can be
inconvenient for downstream work.

``` r
set.seed(1234)
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
table(x)
#> x
#>  a  b  c  d  e 
#> 19 19 21 22 19
```

The `fcount()` function returns a frequency table as a tibble with a
column of factor levels and another of frequencies:

``` r
fcount(x)
#> # A tibble: 5 x 2
#>   f         n
#>   <fct> <int>
#> 1 d        22
#> 2 c        21
#> 3 a        19
#> 4 b        19
#> 5 e        19
```

Everything below comes standard in the auto-generated Rmd file:

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
