#Let's get RStudio and tools

# Istall Rstudio and shiny packages
#See documentation here: https://www.rstudio.com/products/shiny/download-server/
#Shiny is a webapp deployment package for deploying web aps built in R. https://shiny.rstudio.com/
#Rstudio is a package for managing R Scripts. R is a language for running statistical analysis on data.
sudo apt-get install r-base
sudo su - \
-c "R -e \"install.packages('shiny', repos='https://cran.rstudio.com/')\""

sudo apt-get install gdebi-core
wget https://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.5.1.834-amd64.deb
sudo gdebi shiny-server-1.5.1.834-amd64.deb

#install R 'gtools' and dependencies.
#Install r 'sp' and 'rgdal' for geospacial data
#Install r 'geonames'
#Install r 'adehabitatMA' for raster maps
#Install 'archivist.github'
#Install 'BoardGames'
#Install 'chinese.misc'
#Install 'coreNLP'
#Install 'cycleRtools'
#Install 'd3Network'
#Get stest of packages
'ctv'

#Visualiztion with d3
'D3partitionR'
'd3r'
'd3heatmap'
'dashboard'
'pairsD3'
'scatterD3'
'networkD3'
'sunburstR'



#Other Visualiztion
'plotly'
'ggiraph'
'cowplot'
'ggloop'
'GGally'
'svglite'

#Maniupulating files
'docxtools'
'docxtractr'
'openxlsx'
'rlo'

'exifr'
'exif'
'oai'

#GIS data
'OpenStreetMap'
'maptools'
'geosphere'
'rworldmap'
'rworldxtra'
'MazamaSpatialUtils'
'GISTools'
'geojson'
'geojsonlint'
'ggswissmaps'


#NLP and Linguistics
'vowels'
'languageR'
'languagelayeR'
'NLP'
'NLPutils'
'openNLP'
'openNLPdata'
'cleanNLP'


'dat'
'EntropyExplorer'
'EntropyEstimation'
'TDA'
'textreadr'
'textmineR'
'text2vec'
'textshape'
'franc'
'spellcheckr'
'tokenizers'
'ngram'
'TransferEntropy'
'transcribeR'
'lfl'
'lingtypology'
'TransferEntropy'
'csv'
'XML'
'xml2'
'XML2R'
'XiMpLe'
'xslt'

'gistr'
'git2r'
'htmltidy'
'htmltools'
'scrapeR'

'xkcd'
'weatherData'
'Spatial'
'NaturalLanguageProcessing'
'WikidataR'
'xlutils3'
'vdmR'
'curl'
'refund.shiny'
'packagedocs'
'originr'
'tesseract'


#from mat stave
'ggplot2'
'dplyr'
'lme4'
'jsonlite'
'XML'
#Julia Trippe
'car, datasets, dplyr, foreign, graphics, grDevices, lme4, Matrix, methods, nlme, stats, stats4, tidyr, utils'

gsubfn
cluster
ape
vowels.R
languageR
maps
maptools

#Grab some Instructions:
wget http://cran.r-project.org/doc/contrib/Verzani-SimpleR.pdf
wget http://cran.r-project.org/doc/contrib/Short-refcard.pdf
wget http://research.stowers-institute.org/efg/R/Color/Chart/ColorChart.pdf
wget http://research.stowers-institute.org/efg/Report/UsingColorInR.pdf
wget http://coltekin.net/cagri/R/r-exercises.pdf
wget http://www.linguistics.ucsb.edu/faculty/stgries/research/qclwr/_scripts.zip
http://www.linguistics.ucsb.edu/faculty/stgries/research/qclwr/_inputfiles.zip
http://www.linguistics.ucsb.edu/faculty/stgries/research/qclwr/_outputfiles.zip
http://www.linguistics.ucsb.edu/faculty/stgries/research/qclwr/_qclwr2_errata.txt
http://www.linguistics.ucsb.edu/faculty/stgries/research/qclwr/qclwr.html

 wget http://www.linguistics.ucsb.edu/faculty/stgries/research/2012_Clancy_SFLWR_Language.pdf
 #Read: http://faculty.washington.edu/wassink/LING580-RinLx/RinLxSyllabus.html

# Visit: https://experimentalfieldlinguistics.wordpress.com/statistics-and-r-blogs/

Here is how to download:
$ # download the "fortunes" package using 'wget'
$ wget http://cran.r-project.org/src/contrib/fortunes_1.4-1.tar.gz
$ # install the package as superuser
$ sudo R CMD INSTALL fortunes_1.4-1.tar.gz
...
* DONE (fortunes)


http://allthingslinguistic.com/post/103840914592/praatr-an-r-package-for-controlling-praat
