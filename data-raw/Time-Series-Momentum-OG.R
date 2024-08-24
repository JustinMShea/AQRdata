
# Time Series Momentum: Original Paper Data

# Last Updated by AQR (reported): February 27, 2018
#
# Period: 1985-01-31 to 2024-05-31
#
# Source: https://www.aqr.com/Insights/Datasets/Time-Series-Momentum-Original-Paper-Data

## Import data in R
AQR.TSM.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Time-Series-Momentum-Original-Paper-Data.xlsx"
TSM.raw <- openxlsx::read.xlsx(AQR.TSM.url, startRow = 11, detectDates = TRUE)

## Clean up
TSM.OG <- TSM.raw
variable.names <- colnames(TSM.raw)
variable.names <- gsub('\\^', '.', variable.names)
colnames(TSM.OG) <- toupper(variable.names)

# Convert variables to "numeric" and dates to "Date"
# TSM.vars <- colnames(TSM) != 'DATE'
# TSM[, TSM.vars] <- apply(TSM[, TSM.vars], 2, as.numeric)
# #
# TSM$DATE <- as.Date.character(TSM$DATE, '%Y-%m-%d')

colnames(TSM.OG)[1] <- "DATE"

TSM.OG <- TSM.OG[,-c(7)]

TSM.vars <- colnames(TSM.OG) != 'DATE'
TSM.OG[, TSM.vars] <- apply(TSM.OG[, TSM.vars], 2, as.numeric)
TSM.OG$DATE <- as.Date.character(TSM.OG$DATE, '%Y-%m-%d')

# Remove empty cells
# TSM <- na.trim(TSM)

## Remove unused variables
rm(
  AQR.TSM.url
  , TSM.raw
  , variable.names
  , TSM.vars
)

TSM.OG <- xts::xts(TSM.OG[,-1], order.by = TSM.OG$DATE)

# Save to sandbox if needed
save(TSM.OG, file = paste0("data/TSM.OG.RData"), compress = "xz", compression_level = 9)

