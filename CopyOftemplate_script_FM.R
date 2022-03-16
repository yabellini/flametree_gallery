install.packages("flametree")
library(flametree)

# your name, without spaces or special characters
name <- "fatima"

# pick a seed
this_seed <- 6

# pick some colours
shades <- c("#1b2e3c", "#0c0c1e", "#74112f", "#f3e3e2") #elio has a colour seleciton app -will tell us - interact with R you can select an dautomatically add the alphanumeric

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
