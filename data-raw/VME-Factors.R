
## Value and Momentum Everywhere: Factors, Monthly
#
# Last Updated by AQR: March 29, 2024
#
# Period: 1972-01-31 to 2024-03-29
#
# Source: https://www.aqr.com/Insights/Datasets/Value-and-Momentum-Everywhere-Factors-Monthly

## Download in R environment
AQR.VME.Factors.url <- "https://images.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Value-and-Momentum-Everywhere-Factors-Monthly.xlsx"
VME.Factors <- openxlsx::read.xlsx(AQR.VME.Factors.url, sheet=1, startRow=22, colNames=TRUE, detectDates = TRUE)

## Clean up

variable.names <- colnames(VME.Factors)
variable.names <- gsub('\\^', '.', variable.names)
variable.names <- gsub('_', '.', variable.names)
variable.names <- sub("^VAL$", replacement="VAL.EVR", variable.names)
variable.names <- sub("^MOM$", replacement="MOM.EVR", variable.names)
colnames(VME.Factors) <- variable.names

# Convert variables to "numeric" and dates to "Date"
VME.Factors.vars <- colnames(VME.Factors) != 'DATE'
VME.Factors[, VME.Factors.vars] <- apply(VME.Factors[, VME.Factors.vars], 2, as.numeric)


# convert to xts
VME.Factors <- xts::xts(VME.Factors[,-1], order.by = VME.Factors$DATE)

## Remove unused variables
rm(AQR.VME.Factors.url,
  variable.names,
  VME.Factors.vars
)

# Save to sandbox if needed
save(VME.Factors, file = paste0("data/VME.Factors.RData"), compress = "xz", compression_level = 9)


