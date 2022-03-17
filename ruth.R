library(flametree)

# your name, without spaces or special characters
name <- "ruth"

# pick a seed
this_seed <- 6

# pick some colours
shades <- c("#A06AB4", "#D773A2", "07BB9C", "#FFD743")

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
