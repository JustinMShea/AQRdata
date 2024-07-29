
## Value and Momentum Everywhere: Portfolios, Monthly
#
# Last Updated by AQR: April 30, 2024
#
# Period: 1972-01-31 to 2024-03-29
#
# Source: https://www.aqr.com/Insights/Datasets/Value-and-Momentum-Everywhere-Portfolios-Monthly

## Download in R environment
VME.Portfolios.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Value-and-Momentum-Everywhere-Portfolios-Monthly.xlsx"
VME.Portfolios <- openxlsx::read.xlsx(VME.Portfolios.url, sheet=1, startRow=21, colNames=TRUE, detectDates = TRUE)

## Clean up

variable.names <- colnames(VME.Portfolios)
variable.names <- gsub('_', '.', variable.names)
variable.names[1] <- "DATE"
colnames(VME.Portfolios) <- variable.names

# Convert variables to "numeric" and dates to "Date"
VME.Portfolios.vars <- colnames(VME.Portfolios) != 'DATE'
VME.Portfolios[, VME.Portfolios.vars] <- apply(VME.Portfolios[, VME.Portfolios.vars], 2, as.numeric)
VME.Portfolios$DATE <- as.Date.character(VME.Portfolios$DATE, "%m/%d/%Y")

# Remove empty cells
VME.Portfolios <- zoo::na.trim(VME.Portfolios)

# convert to xts
VME.Portfolios <- xts::xts(VME.Portfolios[,-1], order.by = VME.Portfolios$DATE)

## Remove unused variables
rm(VME.Portfolios.url,
   variable.names,
   VME.Portfolios.vars
)

# Save to sandbox if needed
save(VME.Portfolios, file = paste0("data/VME_Portfolios_Monthly.RData"), compress = "xz", compression_level = 9)


