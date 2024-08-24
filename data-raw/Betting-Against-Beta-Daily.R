# Betting Against Beta: Equity Factors Data, Daily
#
# Last Updated by AQR: April 30, 2024
#
# Period: 1930-12-01  to 2024-04-30 
#
# Source: https://www.aqr.com/Insights/Datasets/Betting-Against-Beta-Equity-Factors-Daily

# Download in R environment
Betting.Against.Beta.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Betting-Against-Beta-Equity-Factors-Daily.xlsx"
BAB.Factors.Daily <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(BAB.Factors.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")


# Assigning the new column names to the data frame
colnames(BAB.Factors.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.Daily$DATE <- gsub("/", "", BAB.Factors.Daily$DATE)

BAB.Factors.Daily$DATE <- as.Date(paste0(substr(BAB.Factors.Daily$DATE, 5, 8), "-", substr(BAB.Factors.Daily$DATE, 1, 2), "-", substr(BAB.Factors.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.Daily <- xts::xts(BAB.Factors.Daily[, -1], order.by = BAB.Factors.Daily$DATE)

# Check the structure of the xts object
str(BAB.Factors.Daily)


# Save to sandbox if needed
save(BAB.Factors.Daily, file = paste0("data/BAB.Factors.Daily.RData"), compress = "xz", compression_level = 9)


