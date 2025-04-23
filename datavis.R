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

#Load data
data_2003 <- readr::read_csv("ad_viz_plotval_data.csv")
data_2004 <- readr::read_csv("ad_viz_plotval_data(1).csv")
data_2005 <- readr::read_csv("ad_viz_plotval_data(2).csv")
data_2006 <- readr::read_csv("ad_viz_plotval_data(3).csv")
data_2007 <- readr::read_csv("ad_viz_plotval_data(4).csv")
data_2008 <- readr::read_csv("ad_viz_plotval_data(5).csv")
data_2009 <- readr::read_csv("ad_viz_plotval_data(6).csv")
data_2010 <- readr::read_csv("ad_viz_plotval_data(7).csv")
data_2011 <- readr::read_csv("ad_viz_plotval_data(8).csv")
data_2012 <- readr::read_csv("ad_viz_plotval_data(9).csv")
data_2013 <- readr::read_csv("ad_viz_plotval_data(10).csv")
data_2014 <- readr::read_csv("ad_viz_plotval_data(11).csv")
data_2015 <- readr::read_csv("ad_viz_plotval_data(12).csv")
data_2016 <- readr::read_csv("ad_viz_plotval_data(13).csv")
data_2017 <- readr::read_csv("ad_viz_plotval_data(14).csv")
data_2018 <- readr::read_csv("ad_viz_plotval_data(15).csv")
data_2019 <- readr::read_csv("ad_viz_plotval_data(16).csv")
data_2020 <- readr::read_csv("ad_viz_plotval_data(17).csv")
data_2021 <- readr::read_csv("ad_viz_plotval_data(18).csv")

#combine data
total_data <- rbind(data_2003, data_2004, data_2005, data_2006, data_2007, 
                    data_2008, data_2009, data_2010, data_2011, data_2012, 
                    data_2013, data_2014, data_2015, data_2016, data_2017,
                    data_2018, data_2019, data_2020, data_2021)
#visualization
ggplot(data = total_data, aes(x = `Date`, y = `Daily AQI Value`)) +
  geom_col() +
  labs(title = "Larimer AQI Over Time", x = "Date", y = "AQI")


