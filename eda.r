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

