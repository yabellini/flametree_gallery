# install.packages('flametree')
library(flametree)

# your name, without spaces or special character
name <- "Yani 2026"

# pick a seed
this_seed <- 666

# pick some colours
shades <- c("lightblue", "green", "yellow", "orange")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 10)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "antiquewhite",
    palette = shades,
    style = "nativeflora"
  )

print(tree)
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))

