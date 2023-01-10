# Importing dplyr library
library("dplyr")

# Read the csv with the measurements
measurements = read.csv("measurements.csv")

# As the limbs are roughly cylindrical, the equation to estimate volume is that of a cylinder's.
cyl_volume <- function(width, length) {
  return(pi * (width/2)^2 * length)
}

# Add a column "volume" to the measurements data frame
measurements <- measurements %>% mutate(volume = cyl_volume(limb_width, limb_length))


