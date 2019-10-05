
theme_ridges <- function(font_size = 14, font_family = "", line_size = .5, grid = TRUE, center_axis_labels = FALSE) {
  half_line <- font_size / 2
  small_rel <- 0.857
  small_size <- small_rel * font_size
  color <- "grey90"
  
  if (grid) {
    panel.grid.major <- element_line(colour = color, size = line_size)
    axis.ticks       <- element_line(colour = color, size = line_size)
    axis.ticks.y     <- axis.ticks
  }
  else {
    panel.grid.major <- element_blank()
    axis.ticks       <- element_line(colour = "black", size = line_size)
    axis.ticks.y     <- element_blank()
  }
  
  if (center_axis_labels) {
    axis_just <- 0.5
  }
  else {
    axis_just <- 1.0
  }