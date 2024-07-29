# Value momentum everywhere, monthly factors from original source used on paper

# Last updated by AQR on February 27th, 2018

# Period 1972-01-31/2011-07-31

# Source: https://images.aqr.com/Insights/Datasets/Value-and-Momentum-Everywhere-Factors-Monthly

library(xts)

##Download data to R
AQR.VME.Factors.orig.url <- "https://images.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Value-and-Momentum-Everywhere-Original-Paper-Data.xlsx"
VME_Factors_orig <- openxlsx::read.xlsx(AQR.VME.Factors.orig.url, sheet = 2, startRow = 15, colNames = TRUE, detectDates =  TRUE)

## Clean up
variable.names <- colnames((VME_Factors_orig))
variable.names <- gsub('\\^', 'Factor', variable.names)
variable.names <- sub("^VAL$", replacement = "VAL.EVR", variable.names)
variable.names <- sub("^MOM$", replacement = "MOM.EVR", variable.names)
colnames(VME_Factors_orig) <- variable.names


## Convert to xts
VME_Factors_orig <- xts::xts(VME_Factors_orig[,-1], order.by = as.yearmon(VME_Factors_orig$DATE))


# Save to sandbox if needed
save(VME_Factors_orig, file = paste0("data/VME.Factors.orig.RData"), compress = "xz", compression_level = 9)

