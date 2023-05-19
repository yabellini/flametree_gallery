library(flametree)

# your name, without spaces or special characters
name <- "Issac"

# pick a seed
this_seed <- 20230519

# pick some colours
shades <- c("#C86464", "#7CBF8E", "#7D8EC5", "#D88E3A")

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 10)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "#FDF5E6",
    palette = shades,
    style = "nativeflora"
  )

tree
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))
