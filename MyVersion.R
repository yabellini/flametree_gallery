library(flametree)

# your name, without spaces or special characters
name <- "Leticia"

# pick a seed
this_seed <- 422576537

# pick some colours
shades <- c("red", "green", "darkblue", "yellow")

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
