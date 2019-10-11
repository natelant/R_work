# This is my first script for tidyverse homework

library("praise")
install.packages("tidyverse")
library("tidyverse")
library(readxl)


as_tibble(mtcars)

data <- c(1, 3, 5, 7, 11, 13, 17)

# The pipe operation is syntactic sugar

diff(data)

data %>% diff() %>%
  mean()

rep(praise(), 10)
rep(praise(), mean(diff(data)))

data %>%
  diff() %>%
  mean() %>%
  rep(praise(), times = .)

data %>%
  diff() %>%
  mean() %>%
  replicate(praise(), n = .)

midwest %>%
  select(state) %>%
  unique() %>%
  .[[1]]

# transit data
inform <- read_excel("tidy/data/transit-data.xlsx",
           sheet = "info",
           range = "B1:C7") # or range = cell_cols("B:C") that way the data can include more rows if edited.

write_csv(inform, path = "tidy/edited/timeperiods.csv")

# transport data
trans_data <- read_excel("tidy/data/transit-data.xlsx",
           sheet = "transport data",
           skip = 1) # this skips one row

colnames(trans_data) <- make.names(colnames(trans_data))

write_csv(trans_data, path = "tidy/edited/transport_data.csv")














