library("sf")
library("tmap")
library("dplyr")
data(ukgeom, package = "jrSpatial")

uk = left_join(ukgeom, ukdata, by = c("id" = "geo"))

tm_shape(uk) +
  tm_fill(col = "lifeExp",
          title = "Life Expectancy",
          palette = "BuPu") +
  tm_compass() +
  tm_layout(legend.outside = TRUE)
