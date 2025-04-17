library(ggplot2)
library(dplyr)

filter_data_2003 <- daily_44201_2003 %>% 
  filter(`County Name` == "Larimer")

ggplot(data = filter_data, aes(x = `Site Num`, y = `AQI`)) +
  geom_point() +
  labs(title = "AQI in Larimer Sites", x = "Site Number", y = "AQI")

ggplot(data = filter_data, aes(x = `Date Local`, y = AQI)) +
  geom_col() +
  labs(title = "Larimer AQI Over Time", x = "Date", y = "AQI")

#Create different data sets
filter_data_2021 <- readr::read_csv("daily_44201_2021.csv") %>% 
  filter(`County Name` == "Larimer")

ozone_2003 <- ggplot(data = filter_data_2003, aes(x = `Date Local`, y = AQI)) +
  geom_col() +
  labs(title = "Larimer AQI Over Time", x = "Date", y = "AQI")

ozone_2021 <- ggplot(data = filter_data_2021, aes(x = `Date Local`, y = AQI)) +
  geom_col() +
  labs(title = "Larimer AQI Over Time", x = "Date", y = "AQI")

library(patchwork)
ozone_2003 + ozone_2021

#combine data into one set
total_data <- rbind(filter_data_2003, filter_data_2021)

ggplot(total_data, aes(x = `Date Local`, y = AQI)) +
  geom_line()
