Orlando <- Miami <- 36
Hornets <- 34
#game 1
Hornets <- Hornets + rbinom(1, 1, 0.5)
#game 2
x <- rbinom(1, 1, 0.7)
Miami <- Miami + x
Orlando <- Orlando + abs(x-1)
Hornets <- Hornets + rbinom(1, 1, 0.4)
#game 3
Hornets <- Hornets + rbinom(1, 1, 0.05)
Miami <- Miami + rbinom(1, 1, 0.8)
Orlando <- Orlando + rbinom(1, 1, 0.3)
#game 4
Hornets <- Hornets + rbinom(1, 1, 0.15)
Miami <- Miami + rbinom(1,1, 0.8)
Orlando <- Orlando + rbinom(1, 1, 0.2)
#game 5
Hornets <- Hornets + rbinom(1, 1, 0.4)
Miami <- Miami + rbinom(1, 1, 0.25)
Orlando <- Orlando + rbinom(1, 1, 0.1)
#game 6
Hornets <- Hornets + rbinom(1, 1, .25)
Miami <- Miami + rbinom(1, 1, 0.6)
Orlando <- Orlando + rbinom(1, 1, 0.9)
#game 7
Hornets <- Hornets + rbinom(1, 1, 0.35)
Miami <- Miami + rbinom(1, 1, 0.5)
Orlando <- Orlando + rbinom(1, 1, 0.85)
#game 8
Hornets <- Hornets + rbinom(1, 1, 0.65)
Miami <- Miami + rbinom(1, 1, 0.1)
Orlando <- Orlando + rbinom(1, 1, 0.2)
#game 9 
x2 <- rbinom(1, 1, 0.6)
Hornets <- Hornets + x2
Orlando <- Orlando + abs(x2-1)
Miami <- Miami + rbinom(1, 1, 0.6)
#game 10
Miami <- Miami + rbinom(1, 1, 0.35)