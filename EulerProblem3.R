number <- 600851475143

is_prime <- function(y) {
  for (n in 3:floor(sqrt(y))) {
    if (y %% n == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

prime_factors <- function(x) {
  my_list <- c()
  
  for (z in 3:floor(sqrt(x))) {
    if (x %% z == 0) {
      if (is_prime(z)) {
        my_list <- c(my_list, z)
      }
      if (is_prime(x/z)) {
        my_list <- c(my_list, z)
      }
    }
  }
  
  print(max(my_list))
}

prime_factors(number)

