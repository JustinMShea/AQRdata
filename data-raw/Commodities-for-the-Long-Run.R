# Commodities for the Long Run: Index Level Data, Monthly
#
# Period: Feb 1877 to Dec 2015
#
# Source: https://www.aqr.com/Insights/Datasets/Commodities-for-the-Long-Run-Index-Level-Data-Monthly

 # Download

AQR_commodity_index_file <- "https://images.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Commodities-for-the-Long-Run-Index-Level-Data-Monthly.xlsx"

  # complete .xlsx sheet, containing data, and sources
    download.file(AQR_commodity_index_file, destfile = "sandbox/AQR_commodity.xlsx")

library(openxlsx)
Commodities.Long.Run.Index.Level <- read.xlsx(AQR_commodity_index_file, sheet = 1, startRow = 10)


colnames(Commodities.Long.Run.Index.Level) <- c("Date", "ExcessReturn.Equal",
               "ExcessSpot.Return.Equal", "InterestCarry.Equal",
               "SpotReturn.Equal", "Carry.Equal", "ExcessReturn.longshort",
               "ExcessSpot.Return.longshort","InterestCarry.longshort",
               "Aggregate.forwardcurve","State.forwardcurve", "State.Inflation")
 # Format
Commodities.Long.Run.Index.Level$Date <- as.Date(Commodities.Long.Run.Index.Level$Date, format = "%Y-%m-%d")
Commodities.Long.Run.Index.Level$State.forwardcurve <- as.factor(Commodities.Long.Run.Index.Level $State.forwardcurve)
Commodities.Long.Run.Index.Level$State.Inflation <- as.factor(Commodities.Long.Run.Index.Level$State.Inflation)

 # Save to sandbox if needed
save(Commodities.Long.Run.Index.Level, file = paste0("data/Commodities.Long.Run.Index.Level.RData"), compress = "xz", compression_level = 9)

