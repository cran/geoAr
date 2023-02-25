## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(geoAr) # Argentina's Spatial Data Toolbox, [github::PoliticaArgentina/geoAr] v0.0.1.2
library(geofacet) # 'ggplot2' Faceting Utilities for Geographical Data, CRAN v0.2.0

## -----------------------------------------------------------------------------

tucuman <- get_geo(geo = "TUCUMAN")

(tucuman_names <- tucuman %>%
  add_geo_codes()) # Augment data with metadata as districts names or alternative id codes


# MAPING

ggplot2::ggplot(data = tucuman_names) +
  ggplot2::geom_sf() +
  ggplot2::geom_sf_label(ggplot2::aes(label = nomdepto_censo))


## ----echo =FALSE--------------------------------------------------------------

knitr::include_graphics("https://tuqmanor.netlify.app/post/Geofacetear_files/figure-html/unnamed-chunk-1-1.png")

## ----echo =FALSE--------------------------------------------------------------

knitr::include_graphics("https://tuqmanor.netlify.app/post/Geofacetear_files/figure-html/unnamed-chunk-2-1.png")

## -----------------------------------------------------------------------------

(tucuman_names <- tucuman %>%
  add_geo_codes()) # Augment data with metadata as districts names or alternative id codes


# GRIDS AS IF THEY WHERE MAPS FOR {geofacet}

(grid_tucuman <- get_grid("TUCUMAN"))

geofacet::grid_preview(grid_tucuman, label = "name")


