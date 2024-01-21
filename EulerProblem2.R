total <- 0
x <- 0
y <- 1

while (y < 4000000) {
  temp <- x
  x <- y
  y <- temp + y
  
  if (x %% 2 == 0) {
    next
  }
  
  total <- total + x
}

print(total)
