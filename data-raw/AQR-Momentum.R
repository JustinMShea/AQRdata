# !!!!!
# NEEDS WORK ON MISSING DATES IN DATA AND PROPER FORMATTING. 
#
# AQR Momentum Indices, Monthly
#
# Last Updated by AQR: June 30, 2024
#
# Period: 1930-12-31  to 2024-04-30 
#
# Source: https://www.aqr.com/Insights/Datasets/Momentum-Indices-Monthly

library(lubridate)

# Download in R environment
AQR.Momentum.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Momentum-Indices-Monthly.xlsx"
AQR.MOM.Monthly <- openxlsx::read.xlsx(AQR.Momentum.url, sheet=2, startRow= 1, cols = 1:4, colNames=TRUE, detectDates = TRUE)
AQR.MOM.Monthly <- AQR.MOM.Monthly[-1, ]


## Clean up

variable.names <- colnames(AQR.MOM.Monthly)

# New column names
new_colnames <- c("DATE", "US.LC", "US.SC", "Int")


# Assigning the new column names to the data frame
colnames(AQR.MOM.Monthly) <- new_colnames

# Initialize the start date
start_date <- as.Date("2009-05-31")

# Loop to assign dates from row 353 to 528
for (i in 353:528) {
  AQR.MOM.Monthly$DATE[i] <- format(start_date, "%Y-%m-%d")
  # Move to the next month and set to the last day of that month
  start_date <- ceiling_date(start_date, "month") - days(1)
}

# Convert the DATE column to Date class
AQR.MOM.Monthly$DATE <- as.Date(AQR.MOM.Monthly$DATE, format="%Y-%m-%d")

# Check the updated DATE column
print(AQR.MOM.Monthly$DATE[353:528])

##################
##################

# Start date
start_date <- as.Date("2024-01-31")

# Loop to assign dates from row 353 to 528
for (i in 529:534) {
  AQR.MOM.Monthly$DATE[i] <- format(start_date, "%Y-%m-%d")
  start_date <- start_date %m+% months(1)  # Add one month to the date
}

# Convert the DATE column to Date class
AQR.MOM.Monthly$DATE <- as.Date(AQR.MOM.Monthly$DATE, format="%Y-%m-%d")

# Check the updated DATE column
print(AQR.MOM.Monthly$DATE[529:534])

#########

# Convert the data frame to xts
AQR.MOM.Monthly_xts <- xts::xts(AQR.MOM.Monthly[, -1], order.by = AQR.MOM.Monthly$DATE)

# Check the structure of the xts object
str(AQR.MOM.Monthly_xts)


# Save to sandbox if needed
# save(AQR.MOM.Monthly, file = paste0("data/AQR.MOM.Monthly.RData"), compress = "xz", compression_level = 9)
