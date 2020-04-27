
library(rvest)
aa<-read_html("https://juliael.carto.com/tables/capital_municipios_covid19/public#")
html_structure(aa)
library(jsonlite)
  aa<-fromJSON("https://juliael.carto.com/api/v2/sql?q=select*from%20public.capital_municipios_covid19")
df<-aa$rows
sum(df$positivos)

