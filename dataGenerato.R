# A vector of 5 species names
species = c("Mus musculus", "Drosophila melanogaster", "Bombus pensylvanicus", "Felis catus", "Giraffa camelopardalis")
# A vector of a sample of 100 randomly selected names from the species vector
species_sample = sample(species, 100, replace = TRUE)

# Instantiating the vectors containing the limb width and length of the organisms
limb_width = numeric()
limb_length = numeric()

# Conditional statement to generate the limb width and length vectors of the corresponding animals in the species_sample vector using realistic hypothetical distributions. The unit is in centimeters.
for(i in 1:100) {
  # Bumblebee
  if(species_sample[i] == "Bombus pensylvanicus") {
    limb_width <- append(limb_width, rnorm(1, mean = 0.0067, sd = 0.00035))
    limb_length <- append(limb_length, rnorm(1, mean = 0.8, sd = 0.02))
  # Fruit fly
  } else if(species_sample[i] == "Drosophila melanogaster") {
    limb_width <- append(limb_width, rnorm(1, mean = 0.003, sd = 0.0001))
    limb_length <- append(limb_length, rnorm(1, mean = 0.5, sd = 0.01))
  # Mouse
  } else if(species_sample[i] == "Mus musculus") {
    limb_width <- append(limb_width, rnorm(1, mean = 1, sd = 0.1))
    limb_length <- append(limb_length, rnorm(1, mean = 6, sd = 0.45))
  # Cat
  } else if(species_sample[i] == "Felis catus") {
    limb_width <- append(limb_width, rnorm(1, mean = 5, sd = 0.5))
    limb_length <-append(limb_length, rnorm(1, mean = 20, sd = 2))
    # Giraffe
  } else if(species_sample[i] == "Giraffa camelopardalis") {
    limb_width <- append(limb_width, rnorm(1, mean = 30, sd = 6))
    limb_length <- append(limb_length,rnorm(1, mean = 182, sd = 25))
  }
}

# Randomly generating a vector of 100 observer names from a vector of 3 names
names = c("Terry", "George", "Flora")
observer = sample(names, 100, replace = TRUE)
# Creating a data frame with the generated 4 vectors as columns
measurements_df = data.frame(species_sample, limb_width, limb_length, observer)
# Exporting the data frame
write.csv(measurements_df, "measurements.csv", row.names = FALSE)
