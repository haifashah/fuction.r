# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   https://r-pkgs.org
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#exercise m/s 120, 4b, Data cleaning

sample_data <- data.frame(
  A = c(1, 2, NA, 4, 5),
  B = c(NA, 2, 3, 4, 5),
  C = c(1, 2, 3, 4, 5)
)
sample_data
data_imput <- sample_data

for(i in 1 : ncol(data_imput)) {
  data_imput[is.na(data_imput[, i]), i] <- median(data_imput[, i], na.rm = TRUE)
}

print("Data after Imputation:")
print(data_imput)
