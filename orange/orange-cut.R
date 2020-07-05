library(ggforce)

ggplot() +
  geom_circle(aes(x0 = 0, y0 = 0, r = 5), fill = "orange", colour = NA) +
	geom_arc_bar(aes(x0 = 0, y0 = 0, r0 = 0.25, r = 4.3, start = seq(0, 2 * pi, length.out = 9),
	end = seq(pi / 4, 2 * pi + pi / 4, length.out = 9)), fill = "#F7CD46", colour = "white", size = 1.5, radius = unit(2, 'mm')) +
	coord_fixed(xlim = c(-10, 10), ylim = c(-10, 10)) +
	theme_void() +
	ggsave("orange/orange-cut.png")
