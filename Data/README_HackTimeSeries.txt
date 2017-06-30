README:

Contains an archive with averaged time series stored in the feather file format.

Feather is an interoperable binary data frame storage container and can be loaded in both R or python
R: (https://github.com/wesm/feather ) 
python: (https://github.com/wesm/feather/tree/master/python)

The time series are obtained from the Landsat 4-8 missions and are already radiometrically preprocessed and filtered for clouds and cloud-shadows.
I also clipped them to the timeperiod prior to Biodiversity sampling, thus they are of different lengths each.
Other than that no other pre-processing or aggregation was conducted and the time series can have outliers (sensor errors, ...) or large gaps of missing observations (no records) 

# -------------------------------------------- #
Column name information:

"id" = Landsat recording id. Spatial-temporally unique
"blue" = Blue color
"green" = Green color
"red" = Red color
"nir" = Near-infrared color
"swir1" = Short-wave infrared color 1
"swir2" = Short-wave infrared color 2
You can spectral wavelength information here: 
https://landsat.usgs.gov/what-are-band-designations-landsat-satellites
(However note that the obtained time series were preprocessed / normalized to allow comparison between satellites and sensors)

"EVI2" = The Enhanced Vegetation index as two-band version ( http://www.indexdatabase.de/db/i-single.php?id=576 )
"NBR" = The Normalized Burn Ratio index ( http://www.indexdatabase.de/db/i-single.php?id=53 )
"NDMI" =  The Normalized Difference Moisture Index ( http://www.indexdatabase.de/db/i-single.php?id=56 )               
"NDVI" = The Normalized Difference Vegetation index ( http://www.indexdatabase.de/db/i-single.php?id=58 )

"date" = The day of the recording                 
"Sat" = The Satellite (Landsat 4-8)

"SS" = Study ID
"SSBS" = Site ID (lowest level of aggregation), unique per file
"Predominant_habitat" = Predominant-habitat category at the end of the time series (String)
"Longitude" = The center longitude of the site
"Latitude" = The center latitude of the site
"Max_linear_extent" = The spatial extent over which pixels were averaged.
"Biome" = The terrestrial Biome of the site ( https://en.wikipedia.org/wiki/Biome )
"Sample_start_earliest" = The day when the time series ends

"Hansenlossyear" = A possible value indicating the average year of "forest" loss within the extent. Date from here ( http://earthenginepartners.appspot.com/science-2013-global-forest )
"YearsOfConversion" = A curated value that indicates a year when the site has been "converted" or "fragmented". Can be inaccurate.