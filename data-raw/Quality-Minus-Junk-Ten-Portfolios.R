# Quality Minus Junk: 10 Quality-Sorted Portfolios, Monthly
#
# Last Updated by AQR: April 30, 2024 
#
# Period: 1926-01 to 2012-03
#
# Source: https://www.aqr.com/Insights/Datasets/Quality-Minus-Junk-10-QualitySorted-Portfolios-Monthly

# Download in R environment
Betting.Against.Beta.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Quality-Minus-Junk-10-QualitySorted-Portfolios-Monthly.xlsx"
QMJ.Portfolios.Ten <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(QMJ.Portfolios.Ten)

# New column names
new_colnames <- c("DATE", "LS.P1", "LS.P2", "LS.P3", "LS.P4", "LS.P5", "LS.P6", "LS.P7", "LS.P8", 
                  "LS.P9", "LS.P10", "LS.P10.1", "BS.P1", "BS.P2", "BS.P3", "BS.P4", "BS.P5", 
                  "BS.P6", "BS.P7", "BS.P8", "BS.P9", "BS.P10", "BS.P10.1")

# Assigning the new column names to the data frame
colnames(QMJ.Portfolios.Ten) <- new_colnames

QMJ.Portfolios.Ten$DATE <- gsub("/", "", QMJ.Portfolios.Ten$DATE)

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Portfolios.Ten$DATE <- as.Date(paste0(substr(QMJ.Portfolios.Ten$DATE, 5, 8), "-", 
                                          substr(QMJ.Portfolios.Ten$DATE, 1, 2), "-", 
                                          substr(QMJ.Portfolios.Ten$DATE, 3, 4)))


# Identifying the columns to be converted (all except the DATE column)
numeric_columns <- setdiff(names(QMJ.Portfolios.Ten), "DATE")
                   
# Converting the specified columns from character to numeric
QMJ.Portfolios.Ten[numeric_columns] <- lapply(QMJ.Portfolios.Ten[numeric_columns], as.numeric)    


QMJ.Portfolios.Ten <- QMJ.Portfolios.Ten[!is.na(QMJ.Portfolios.Ten$DATE), ]

# Convert the data.frame to xts object, using the Date column as the index

QMJ.Portfolios.Ten <- xts::xts(QMJ.Portfolios.Ten[, -1], order.by = QMJ.Portfolios.Ten$DATE)

# Check the structure of the xts object
str(QMJ.Portfolios.Ten)


# Save to sandbox if needed
save(QMJ.Portfolios.Ten, file = paste0("data/QMJ.Portfolios.Ten.RData"), compress = "xz", compression_level = 9)


