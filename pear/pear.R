library(ggforce)
library(dplyr)

pear = tribble(
  ~x, ~y,
  -1.5, 6,
  1.5, 6,
  1.5, 3,
  4, 0.5,
  4, -4,
	0, -5,
	-4, -4,
  -4, 0.5,
  -1.5, 3
)

ggplot(pear) +
  geom_bspline_closed(data = pear, aes(x, y), fill = "#d1e231") +
	# geom_point(aes(x, y)) +
	geom_curve(aes(x = 0, y = 5.5, xend = 1, yend = 7), size = 2, colour = "brown", curvature = -0.2, lineend = "round") +
  coord_fixed(xlim = c(-10, 10), ylim = c(-10, 10)) +
  theme_void() +
  ggsave("pear/pear.png", height = 7, width = 7)
