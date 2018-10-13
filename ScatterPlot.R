library(tidyverse)
attach(mtcars)

ggplot(data=mtcars, aes(x = wt, y = mpg)) + 
    geom_point(shape = 19, size = 2.5, colour = cyl) + 
    ggtitle("Scatter Plot: MPG vs. Weight with Model Label") + 
    geom_text(aes(label=row.names(mtcars), vjust=-1), check_overlap = T, size = 3) + 
    theme_bw()
