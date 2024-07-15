# Quality Minus Junk: Six Portfolios Formed on Size and Quality, Monthly
#
# Last Updated by AQR: April 30, 2024 
#
# Period: 1957-07-31 to 2024-04-30
#
# Source: https://www.aqr.com/Insights/Datasets/Quality-Minus-Junk-Six-Portfolios-Formed-on-Size-and-Quality-Monthly

# Download in R environment
Betting.Against.Beta.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Quality-Minus-Junk-Six-Portfolios-Formed-on-Size-and-Quality-Monthly.xlsx"
QMJ.Portfolios.Six <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(QMJ.Portfolios.Six)

# New column names
new_colnames <- c("DATE", "LS.S.Lo", "LS.S.Med", "LS.S.Lar", "LS.B.Lo", "LS.B.Med", "LS.B.Lar", 
                   "LS.QMJ.F", "BS.S.Lo", "BS.S.Med", "BS.S.Lar", "BS.B.Lo", "BS.B.Med", "BS.B.Lar", "BS.QMJ.F")

# Assigning the new column names to the data frame
colnames(QMJ.Portfolios.Six) <- new_colnames

QMJ.Portfolios.Six$DATE <- gsub("/", "", QMJ.Portfolios.Six$DATE)

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Portfolios.Six$DATE <- as.Date(paste0(substr(QMJ.Portfolios.Six$DATE, 5, 8), "-", 
                                          substr(QMJ.Portfolios.Six$DATE, 1, 2), "-", 
                                          substr(QMJ.Portfolios.Six$DATE, 3, 4)))


# Identifying the columns to be converted (all except the DATE column)
numeric_columns <- setdiff(names(QMJ.Portfolios.Six), "DATE")

# Converting the specified columns from character to numeric
QMJ.Portfolios.Six[numeric_columns] <- lapply(QMJ.Portfolios.Six[numeric_columns], as.numeric)    


QMJ.Portfolios.Six <- QMJ.Portfolios.Six[!is.na(QMJ.Portfolios.Six$DATE), ]

# Convert the data.frame to xts object, using the Date column as the index

QMJ.Portfolios.Six <- xts::xts(QMJ.Portfolios.Six[, -1], order.by = QMJ.Portfolios.Six$DATE)

# Check the structure of the xts object
str(QMJ.Portfolios.Six)


# Save to sandbox if needed
save(QMJ.Portfolios.Six, file = paste0("data/QMJ.Portfolios.Six.RData"), compress = "xz", compression_level = 9)


