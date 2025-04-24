# mess around to make a plot
library(tidyverse)

tibble(z = seq(-8.1, 8.1, .01)) %>% 
  mutate(x1 = cos(4.3 * z), 
         y1 = sin(4.1 * z), 
         x2 = cos(8.4 * z), 
         y2 = sin(-8.1 * z)) %>% 
  ggplot(aes(x1, y1)) +  
  geom_path(linewidth = 2, 
            alpha = .3, 
            colour = "#0f2537") + 
  geom_path(aes(x2, y2), 
            linewidth = 2, 
            alpha = .3, 
            colour = "#f8f9fa") +
  # coord_polar(inner.radius = 1) +
  coord_radial(inner.radius = .15) +
  theme_void()

ggsave("assets/img/temp.png")
