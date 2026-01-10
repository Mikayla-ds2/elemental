# installing packages
install.packages('tidyverse')
install.packages('rlang')
install.packages('dplyr')
install.packages('caret')
install.packages('rjson')

# getting working directory to ensure proper something lol
getwd()

# listing files to ensure correct directory
list.files()

# getting the libraries of all the packages
library(tidyverse)
library(rlang)
library(dplyr)
library(caret)
library(rjson) # was going to use this but the glimpse and head looked superrrr weird so just did some python and made a csv file


elements <- read.csv('elements.csv')
glimpse(elements)

dim(elements)
summary(elements)

# dropping first index column + electron Configuration dictionary
elements <- subset(elements, select = -c(X, electronConfiguration))
dim(elements)
summary(elements)

# saw that year Discovered column was character type but forgot the Ancient
elements$yearDiscovered <- as.numeric(elements$yearDiscovered)
summary(elements)

print(sum(is.na(elements)))

# all rows that elements were discovered in ancient times
missingValueRows <- elements[!complete.cases(elements), ]
print(missingValueRows)

# now feature engineering an ancient column
elements$isAncient <- is.na(elements$yearDiscovered)
elements$yearDiscovered[is.na(elements$yearDiscovered)] <- -3000

