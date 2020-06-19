test_that("fbind() binds factor (or character)", {
  x <- c("a", "b")
  x_fact <- factor(x)
  y <- c("c", "d")
  z <- factor(c("a", "b", "c", "d"))

  expect_identical(fbind(x, y), z)
  expect_identical(fbind(x_fact, y), z)
})

# Expectations have two arguments - first is the actual result, the second is what you expect.
# When run in the console, true arguments don't yield anything, but false ones yield an error.
