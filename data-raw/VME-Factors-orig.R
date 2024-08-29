# Value momentum everywhere, monthly factors from original source used on paper

# Last updated by AQR on February 27th, 2018

# Period 1972-01-31/2011-07-31

# Source: https://images.aqr.com/Insights/Datasets/Value-and-Momentum-Everywhere-Factors-Monthly

library(xts)

##Download data to R
AQR.VME.Factors.orig.url <- "https://images.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Value-and-Momentum-Everywhere-Original-Paper-Data.xlsx"
VME.Factors.orig <- openxlsx::read.xlsx(AQR.VME.Factors.orig.url, sheet = 2, startRow = 15, colNames = TRUE, detectDates =  TRUE)

## Clean up
variable.names <- colnames((VME.Factors.orig))
variable.names <- gsub('\\^', 'Factor', variable.names)
variable.names <- sub("^VAL$", replacement = "VAL.EVR", variable.names)
variable.names <- sub("^MOM$", replacement = "MOM.EVR", variable.names)
colnames(VME.Factors.orig) <- variable.names


## Convert to xts
VME.Factors.orig <- xts::xts(VME.Factors.orig[,-1], order.by = as.yearmon(VME.Factors.orig$DATE))


# Save to sandbox if needed
save(VME.Factors.orig, file = paste0("data/VME.Factors.orig.RData"), compress = "xz", compression_level = 9)

####
####

##Download data to R
AQR.VME.Factors.orig.url <- "https://images.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Value-and-Momentum-Everywhere-Original-Paper-Data.xlsx"
VME.Portfolios.orig <- openxlsx::read.xlsx(AQR.VME.Factors.orig.url, sheet = 2, startRow = 15, colNames = TRUE, detectDates =  TRUE)

## Clean up

variable.names <- colnames(VME.Portfolios.orig)
variable.names <- gsub('_', '.', variable.names)
variable.names[1] <- "DATE"
colnames(VME.Portfolios.orig) <- variable.names

# Convert variables to "numeric" and dates to "Date"
VME.Portfolios.orig.vars <- colnames(VME.Portfolios.orig) != 'DATE'
VME.Portfolios.orig[, VME.Portfolios.orig.vars] <- apply(VME.Portfolios.orig[, VME.Portfolios.orig.vars], 2, as.numeric)
VME.Portfolios.orig$DATE <- as.Date.character(VME.Portfolios.orig$DATE, "%m/%d/%Y")


# convert to xts
VME.Portfolios.orig <- xts::xts(VME.Portfolios.orig[,-1], order.by = VME.Portfolios.orig$DATE)

## Remove unused variables
rm(AQR.VME.Factors.orig.url,
   variable.names,
   VME.Portfolios.orig.vars
)

# Save to sandbox if needed
save(VME.Portfolios.orig, file = paste0("data/VME.Portfolios.orig.RData"), compress = "xz", compression_level = 9)

