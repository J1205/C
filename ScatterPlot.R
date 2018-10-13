library(tidyverse)
attach(mtcars)

ggplot(data=mtcars, aes(x = wt, y = mpg)) + 
    geom_point(shape = 19, size = 2.5, colour = cyl) + # shape 19: solid circle
    ggtitle("Scatter Plot: MPG vs. Weight with Model Label") + 
    geom_text(aes(label=row.names(mtcars), vjust=-1), check_overlap = T, size = 3) + # vjust=-1 위로, hjust=1 오른쪽 
    theme_bw()
