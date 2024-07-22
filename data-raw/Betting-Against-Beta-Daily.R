# Betting Against Beta: Equity Factors Data, Daily
#
# Last Updated by AQR: April 30, 2024
#
# Period: 1930-12-01  to 2024-04-30 
#
# Source: https://www.aqr.com/Insights/Datasets/Betting-Against-Beta-Equity-Factors-Daily

# Download in R environment
Betting.Against.Beta.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Betting-Against-Beta-Equity-Factors-Daily.xlsx"
BAB.Factors<- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(BAB.Factors)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")


# Assigning the new column names to the data frame
colnames(BAB.Factors) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors$DATE <- gsub("/", "", BAB.Factors$DATE)

BAB.Factors$DATE <- as.Date(paste0(substr(BAB.Factors$DATE, 5, 8), "-", substr(BAB.Factors$DATE, 1, 2), "-", substr(BAB.Factors$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors <- xts::xts(BAB.Factors[, -1], order.by = BAB.Factors$DATE)

# Check the structure of the xts object
str(BAB.Factors)


# Save to sandbox if needed
save(BAB.Factors, file = paste0("data/BAB.Factors.Daily.RData"), compress = "xz", compression_level = 9)


