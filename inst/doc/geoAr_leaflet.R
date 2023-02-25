## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(geoAr) # Argentina's Spatial Data Toolbox, [github::PoliticaArgentina/geoAr] v0.0.1.2
library(leaflet) # Create Interactive Web Maps with the JavaScript 'Leaflet' Library, CRAN v2.0.4.1

## -----------------------------------------------------------------------------

argentina <- get_geo(geo = "ARGENTINA", level = "provincia")

leaflet(argentina) %>% 
  addPolygons()


## -----------------------------------------------------------------------------
leaflet(argentina) %>% 
  addPolygons() %>% 
  addProviderTiles(provider = providers$OpenStreetMap) 



## -----------------------------------------------------------------------------
leaflet(argentina) %>% 
  addPolygons() %>% 
  geoAr::addArgTiles()



