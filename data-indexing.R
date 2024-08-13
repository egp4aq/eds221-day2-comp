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

# subsetting ----

mtcars
mtcars[mtcars$gear == 5,]
mtcars[mtcars$gear == 5 & mtcars$cyl ==4,]

subset(mtcars, gear == 5) # same result as what we get from line 71, but this looks a bit neater
subset(mtcars, gear == 5 & cyl == 4) # same result as line 72

library(tidyverse)
ggplot(data = subset(mtcars, gear == 5 & cyl == 4),
       aes(x = mpg, y = disp)) +
  geom_point()

df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df
df$z <- NULL 
# gets rid of z column, if we put NA instead of NULL, the column would still be there but it would be full of NA values
df

df[c("x", "y")]
df[setdiff(names(df), "z")] 
# gets the same result as line 88, but this says keep everything except for z which could be easier for longer data


