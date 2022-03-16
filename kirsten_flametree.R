install.packages("flametree")
library(flametree)

# your name, without spaces or special characters
name <- "kirsten"

# pick a seed
this_seed <- 30

# pick some colours
shades <- c("#BEF7FF", "#E6FF83", "#666666", "#FFFFFD") # #458CFF

# data structure defining the trees
dat <- flametree_grow(seed = this_seed, time = 10, trees = 10)

# draw the plot
tree <- dat %>%
  flametree_plot(
    background = "#1b1e0f",
    palette = shades,
    style = "nativeflora"
  )

tree
# save the plot
flametree_save(tree, filename = paste0("fig/tree_", name, ".png"))
