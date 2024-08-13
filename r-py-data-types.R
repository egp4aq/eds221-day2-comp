
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

# accessing pieces of matrices ----

whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), ncol = 2, nrow = 2, byrow = FALSE)
whale_travel

whale_travel[1,2] # first number says look in 1st row, second number says look in 2nd column
whale_travel[2,] # gives us the whole 2nd row
whale_travel[,1] # gives us the whole 1st column
whale_travel[3] # goes through the matrix in the way that it filled itself --> shouldn't really do it this way

# lists & accessing pieces of matrices ----

urchins <- list("blue", c(1, 2, 3), c("a cat", "a dog"), 5L)

urchins[[1]]

tacos <- list(toppings = c("onion", "cilantro", "guacamole"), fillings = c("beans", "meat", "veggies"))
tacos

tacos[[2]]
tacos$fillings[2]

# data frames ----

fruit <- data.frame(type = c("apple", "banana", "peach"),
                    mass = c(130, 195, 150))
fruit
class(fruit)

fruit[3,1]
fruit[1,2]
fruit[2,1] <- "pineapple"

fruit$type
fruit$mass


# atomic vectors ----

x <- c(2.1, 4.2, 3.3, 5.4)

x[c(3,1)]

x[order(x)]
x[c(1,1)]
x[c(2.1,2.9)]

x[-1]
x[-c(3,1)]

x[c(TRUE, TRUE, FALSE, FALSE)]
x[x > 3]

x[c(TRUE, FALSE)]
x[c(TRUE, TRUE, NA, FALSE)]
x[]

x <- 1:5
x
x[c(1,2)] <- 2
x[-1] <- 4:1
x
x[c(TRUE, FALSE, NA)] <- 1
x
df <- data.frame(a=c(1,10,NA))
df$a[df$a < 5] <- 0
