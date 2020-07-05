library(ggforce)

ggplot() +
  geom_circle(aes(x0 = 0, y0 = 0, r = 5), fill = "orange", colour = NA) +
	geom_bspline_closed(aes(x = c(0, 1, 4, 2), y = c(5, 7, 8, 5)), fill = "forestgreen", colour = NA) +
	geom_point(aes(x = c(1, 3, 2), y = c(0, -0.5, -2)), size = 3, colour = "brown") +
	coord_fixed(xlim = c(-10, 10), ylim = c(-10, 10)) +
	theme_void() +
	ggsave("orange/orange.png", height = 7, width = 7)
