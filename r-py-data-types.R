
# character vector ----

dogs <- c("teddy", "khora", "waffle", "banjo")

typeof(dogs)
class(dogs)

# numeric vector ----

weights <- c(50, 55, 25, 35)

typeof(weights)
class(weights)

# integer vector ----

dog_age <- c(5L, 6L, 1L, 7L)

typeof(dog_age)
class(dog_age)
is.numeric(dog_age)

# mixed vector ----

dog_info <- c("teddy", 50, 5L)

typeof(dog_info)
is.character(dog_info)

# accessing bits of vectors / indexing ----

dog_food <- c(teddy = "purina",
              khora = "alpo",
              waffle = "fancy feast",
              banjo = "blue diamond")
dog_food[2]
dog_food["khora"]

# warm up for loops ----

cars <- c("red", "orange", "white", "blue", "silver", "black")
cars[5]
cars[2:4]

i <- 3
cars[i]

i <- seq(1:3)
cars[i]

cars[3] <- "BURRITOS!"
cars

# matrices ----

fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)
fish_size

typeof(fish_size)
class(fish_size)

dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)
dog_walk

class(dog_walk)
typeof(dog_walk)

