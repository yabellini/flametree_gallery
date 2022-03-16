# new file
library(flametree)

# your name, without spaces or special characters
name <- "pao"

# pick a seed
this_seed <- 10

# pick some colours
shades <- c("steelblue", "brown", "gray", "lightgreen")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 10)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "antiquewhite",
    palette = shades,
    style = "nativeflora"
  )

tree
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))
