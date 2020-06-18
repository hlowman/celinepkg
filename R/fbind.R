# The following is the script to accompany my workthrough of the 2nd version of "R Packages" by Hadley Wickham and Jennifer Bryan.

#(a <- factor(c("character", "hits", "your", "eyevalls")))
#(b <- factor(c("but", "integer", "where it", "counts")))
#c(a, b)
#factor(c(as.character(a), as.character(b)))

# DROP THAT LOGIC into a function. But we can only have the below as code in this .R file since it needs to be universal in application.

fbind <- function(a, b) {
  factor(c(as.character(a), as.character(b)))
}

# The above function catenates two factors.
# Then we use load_all() to make the function available for interactive use, as if we'd built and installed foofactors and attached it via library(foofactors).
