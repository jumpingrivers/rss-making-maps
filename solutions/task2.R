data(ukgeom, package = "jrSpatial")
tm_shape(ukgeom) +
  tm_polygons(col = "population_2017",
              palette = "YlOrBr",
              breaks = seq(0,3000000, by = 250000)) +
  tm_layout(
    title = "U.K. Population 2017",
    legend.outside = TRUE
  )
