### Penguin analysis 

### This data from Allison Horst (https://github.com/allisonhorst) 

#install.packages("palmerpenguins")

library(palmerpenguins)
library(ggplot2)

data(package = 'palmerpenguins')

#head(penguins)

#### visualization #####
pen_mass_depth <- ggplot(data = penguins, mapping = aes(x  = body_mass_g,  y = bill_depth_mm, color = species)) + geom_point()

pen_mass_depth <- pen_mass_depth +
  labs(title = "Penguin Bill Depth versus Size",
       subtitle = "Data from the Palmer LTER",
       x = "Body Mass (g)",
       y = "Bill Depth (mm)",
       color = "Species of\n Penguin")
pen_mass_depth
