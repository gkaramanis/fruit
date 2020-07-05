library(ggforce)

ggplot() +
  geom_circle(aes(x0 = c(-2.5, 3), y0 = -3, r = 2), fill = "#C53631", colour = NA) +
  geom_curve(aes(x = c(-2.2, 3), y = -2, xend = 0, yend = 5), size = 2, colour = "darkgreen", curvature = 0.2, lineend = "round") +
  coord_fixed(xlim = c(-10, 10), ylim = c(-10, 10)) +
  theme_void() +
  ggsave("cherry/cherry.png", height = 7, width = 7)
