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
AQR_commodity <- read.xlsx(AQR_commodity_index_file, sheet = 1, startRow = 10)


colnames(AQR_commodity) <- c("Date", "ExcessReturn.Equal",
               "ExcessSpot.Return.Equal", "InterestCarry.Equal",
               "SpotReturn.Equal", "Carry.Equal", "ExcessReturn.longshort",
               "ExcessSpot.Return.longshort","InterestCarry.longshort",
               "Aggregate.forwardcurve","State.forwardcurve", "State.Inflation")
 # Format
AQR_commodity$Date <- as.Date(AQR_commodity$Date, format = "%Y-%m-%d")
AQR_commodity$State.forwardcurve <- as.factor(AQR_commodity $State.forwardcurve)
AQR_commodity$State.Inflation <- as.factor(AQR_commodity$State.Inflation)

 # Save to sandbox if needed
save(AQR_commodity, file = paste0("data/Commodities.Long.Run.Index.Level.RData"), compress = "xz", compression_level = 9)

