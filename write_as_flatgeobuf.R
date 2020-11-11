### write polygons as flatgeobuf, 11 Nov 2020
install.packages('remotes')
install.packages('tibble')
remotes::install_github('r-spatial/sf')
require(sf) # GEOS 3.8.1, GDAL 3.2.0, PROJ 7.2.0
pth <- '/home/rob/Documents/prj/vuln_gis/watersheds'
setwd(pth)
sort(sf::st_drivers()$name)
p <- read_sf(dsn = pth, layer = 'watersheds')
p
sf::st_write(p, dsn = '../watersheds_fgb', driver = 'FlatGeobuf')
####    END    ####
