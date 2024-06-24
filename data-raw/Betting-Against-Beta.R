
## Betting Against Beta: Equity Factors, Daily
#
# Last Updated by AQR: February 27, 2018
#
# Period: 1926-01 to 2012-03
#
# Source: https://www.aqr.com/Insights/Datasets/Betting-Against-Beta-Equity-Factors-Daily


## Download in R environment
Betting.Against.Beta.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Betting-Against-Beta-Original-Paper-Data.xlsx"
BAB.Factors <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=1, startRow=8, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(BAB.Factors)

colnames(BAB.Factors) <- variable.names

# Convert variables to "numeric" and dates to "Date"
BAB.Factors.vars <- colnames(BAB.Factors) != 'DATE'

BAB.Factors$Date <- apply(gsub(BAB.Factors))

BAB.Factors[, BAB.Factors.vars] <- apply(BAB.Factors[, BAB.Factors.vars], 2, as.numeric)
BAB.Factors$DATE <- as.Date.character(BAB.Factors$DATE, "%Y-%m")

# Remove empty cells
BAB.Factors <- zoo::na.trim(BAB.Factors)

# convert to xts
BAB.Factors <- xts::xts(BAB.Factors[,-1], order.by = VME.Factors$DATE)

## Remove unused variables
rm(AQR.BAB.Factors.url,
   variable.names,
   BAB.Factors.vars
)

# Save to sandbox if needed
# save(VME.Factors, file = paste0("data/VME_Factors.RData"), compress = "xz", compression_level = 9)


