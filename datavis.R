library(ggplot2)
library(dplyr)

filter_data <- daily_44201_2003 %>% 
  filter(`County Name` == "Larimer")

ggplot(data = filter_data, aes(x = `Site Num`, y = `AQI`)) +
  geom_point() +
  labs(title = "AQI in Larimer Sites", x = "Site Number", y = "AQI")

ggplot(data = filter_data, aes(x = `Date Local`, y = AQI)) +
  geom_col() +
  labs(title = "Larimer AQI Over Time", x = "Date", y = "AQI")
