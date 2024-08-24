# Quality Minus Junk: Factors, Monthly
#
# Last Updated by AQR: April 30, 2024 
#
# Period: 1957-07-31 to 2024-04-30
#
# Source: https://www.aqr.com/Insights/Datasets/Quality-Minus-Junk-Factors-Daily

# Download in R environment
QMJ.Factors.Monthly.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Quality-Minus-Junk-Factors-Monthly.xlsx"
QMJ.Factors.Monthly <- openxlsx::read.xlsx(QMJ.Factors.Monthly.url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(QMJ.Factors.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK", 
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR", 
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AGE.GL", "AGE.GL.US", "AGE.EU", "AGE.NA", "AGE.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.Monthly) <- new_colnames

QMJ.Factors.Monthly$DATE <- gsub("/", "", QMJ.Factors.Monthly$DATE)

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.Monthly$DATE <- as.Date(paste0(substr(QMJ.Factors.Monthly$DATE, 5, 8), "-", 
                                   substr(QMJ.Factors.Monthly$DATE, 1, 2), "-", 
                                   substr(QMJ.Factors.Monthly$DATE, 3, 4)))


# Identifying the columns to be converted (all except the DATE column)
numeric_columns <- setdiff(names(QMJ.Factors.Monthly), "DATE")

# Converting the specified columns from character to numeric
QMJ.Factors.Monthly[numeric_columns] <- lapply(QMJ.Factors.Monthly[numeric_columns], as.numeric)   


# QMJ.Factors.Monthly <- QMJ.Factors.Monthly[1:804, ]


QMJ.Factors.Monthly <- QMJ.Factors.Monthly[!is.na(QMJ.Factors.Monthly$DATE), ]

na.trim(QMJ.Factors.Monthly$DATE)

# Convert the data.frame to xts object, using the Date column as the index

QMJ.Factors.Monthly <- xts::xts(QMJ.Factors.Monthly[, -1], order.by = QMJ.Factors.Monthly$DATE)


# Check the structure of the xts object
str(QMJ.Factors.Monthly)


# Save to sandbox if needed
save(QMJ.Factors.Monthly, file = paste0("data/QMJ.Factors.Monthly.RData"), compress = "xz", compression_level = 9)


