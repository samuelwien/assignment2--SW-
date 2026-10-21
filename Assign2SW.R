#Select penguins.csv in the window that opens
penguins <- read.csv(file.choose())

# Look at the first few rows
head(penguins)

# Analysis 1: Count penguins by species and island
table(penguins$species)
table(penguins$island)

# Analysis 2: Summarize the numeric measurements
summary(penguins[c(
  "bill_length_mm",
  "bill_depth_mm",
  "flipper_length_mm",
  "body_mass_g"
)])

# Analysis 3: Mean body mass for each species
aggregate(
  body_mass_g ~ species,
  data = penguins,
  FUN = mean,
  na.rm = TRUE
)

# Plot body mass by species
boxplot(
  body_mass_g ~ species,
  data = penguins,
  main = "Penguin Body Mass by Species",
  xlab = "Species",
  ylab = "Body mass (grams)",
  col = "lightblue"
)


#edit under branch

hist(
  penguins$flipper_length_mm,
  main = "Distribution of Penguin Flipper Length",
  xlab = "Flipper length (mm)",
  col = "lightblue",
  border = "white"
)