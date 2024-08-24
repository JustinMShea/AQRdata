# Quality Minus Junk: Factors, Daily
#
# Last Updated by AQR: April 30, 2024 
#
# Period: 1957-07-31 to 2024-04-30
#
# Source: https://www.aqr.com/Insights/Datasets/Quality-Minus-Junk-Factors-Daily

# Download in R environment
QMJ.Factors.Daily.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Quality-Minus-Junk-Factors-Daily.xlsx"
QMJ.Factors.Daily <- openxlsx::read.xlsx(QMJ.Factors.Daily.url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(QMJ.Factors.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK", 
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR", 
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AGE.GL", "AGE.GL.US", "AGE.EU", "AGE.NA", "AGE.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.Daily) <- new_colnames

QMJ.Factors.Daily$DATE <- gsub("/", "", QMJ.Factors.Daily$DATE)

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.Daily$DATE <- as.Date(paste0(substr(QMJ.Factors.Daily$DATE, 5, 8), "-", 
                                          substr(QMJ.Factors.Daily$DATE, 1, 2), "-", 
                                          substr(QMJ.Factors.Daily$DATE, 3, 4)))



# Convert the data.frame to xts object, using the Date column as the index

QMJ.Factors.Daily <- xts::xts(QMJ.Factors.Daily[, -1], order.by = QMJ.Factors.Daily$DATE)

# Check the structure of the xts object
str(QMJ.Factors.Daily)


# Save to sandbox if needed
save(QMJ.Factors.Daily, file = paste0("data/QMJ.Factors.Daily.RData"), compress = "xz", compression_level = 9)


