
## Value and Momentum Everywhere: Portfolios, Monthly
#
# Last Updated by AQR: April 30, 2024
#
# Period: 1972-01-31 to 2024-03-29
#
# Source: https://www.aqr.com/Insights/Datasets/Value-and-Momentum-Everywhere-Portfolios-Monthly

## Download in R environment
VME.Portfolios.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Value-and-Momentum-Everywhere-Portfolios-Monthly.xlsx"
VME.Portfolios.Monthly <- openxlsx::read.xlsx(VME.Portfolios.url, sheet=1, startRow=21, colNames=TRUE, detectDates = TRUE)

## Clean up

variable.names <- colnames(VME.Portfolios.Monthly)
variable.names <- gsub('_', '.', variable.names)
variable.names[1] <- "DATE"
colnames(VME.Portfolios.Monthly) <- variable.names

# Convert variables to "numeric" and dates to "Date"
VME.Portfolios.Monthly.vars <- colnames(VME.Portfolios.Monthly) != 'DATE'
VME.Portfolios.Monthly[, VME.Portfolios.Monthly.vars] <- apply(VME.Portfolios.Monthly[, VME.Portfolios.Monthly.vars], 2, as.numeric)
VME.Portfolios.Monthly$DATE <- as.Date.character(VME.Portfolios.Monthly$DATE, "%m/%d/%Y")


# convert to xts
VME.Portfolios.Monthly <- xts::xts(VME.Portfolios.Monthly[,-1], order.by = VME.Portfolios.Monthly$DATE)

## Remove unused variables
rm(VME.Portfolios.url,
   variable.names,
   VME.Portfolios.Monthly.vars
)

# Save to sandbox if needed
save(VME.Portfolios.Monthly, file = paste0("data/VME.Portfolios.Monthly.RData"), compress = "xz", compression_level = 9)


