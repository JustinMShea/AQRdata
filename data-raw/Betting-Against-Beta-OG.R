# Betting Against Beta: Original Paper Data
#
# Last Updated by AQR: February 27, 2018 
#
# Period: 1926-01 to 2012-03
#
# Source: https://www.aqr.com/Insights/Datasets/Betting-Against-Beta-Original-Paper-Data 

# Download in R environment
Betting.Against.Beta.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Betting-Against-Beta-Original-Paper-Data.xlsx"
BAB.Factors.OG <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=1, startRow=10, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(BAB.Factors.OG)

# New column names
new_colnames <- c("Date", "EQ.US", "EQ.Int", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK", 
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.HKG", "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", 
                  "EQ.SGP", "EQ.SWE", "US.TB", "US.CI", "US.CIH", "US.CB", "EI", "CB", "FX", "CM", "AA")

# Assigning the new column names to the data frame
colnames(BAB.Factors.OG) <- new_colnames


# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.OG$Date <- as.Date(paste0(substr(BAB.Factors.OG$Date, 1, 4), "-", substr(BAB.Factors.OG$Date, 5, 6), "-01"))


# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.OG <- xts::xts(BAB.Factors.OG[, -1], order.by = BAB.Factors.OG$Date)

# Check the structure of the xts object
str(BAB.Factors.OG)


# Save to sandbox if needed
save(BAB.Factors.OG, file = paste0("data/BAB.Factors.OG.RData"), compress = "xz", compression_level = 9)


