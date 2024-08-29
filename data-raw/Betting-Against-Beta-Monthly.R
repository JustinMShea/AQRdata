# Betting Against Beta: Equity Factors Data, Monthly
#
# Last Updated by AQR: April 30, 2024
#
# Period: 1930-12-31  to 2024-04-30 
#
# Source: https://www.aqr.com/Insights/Datasets/Betting-Against-Beta-Equity-Factors-Monthly

# Download in R environment
Betting.Against.Beta.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Betting-Against-Beta-Equity-Factors-Monthly.xlsx"
BAB.Factors.Monthly <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(BAB.Factors.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")


# Assigning the new column names to the data frame
colnames(BAB.Factors.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.Monthly$DATE <- gsub("/", "", BAB.Factors.Monthly$DATE)

BAB.Factors.Monthly$DATE <- as.Date(paste0(substr(BAB.Factors.Monthly$DATE, 5, 8), "-", substr(BAB.Factors.Monthly$DATE, 1, 2), "-", substr(BAB.Factors.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.Monthly <- xts::xts(BAB.Factors.Monthly[, -1], order.by = BAB.Factors.Monthly$DATE)

# Check the structure of the xts object
str(BAB.Factors.Monthly)


# Save to sandbox if needed
save(BAB.Factors.Monthly, file = paste0("data/BAB.Factors.Monthly.RData"), compress = "xz", compression_level = 9)

###
###   2. MKT

BAB.Factors.MKT.Monthly <- openxlsx::read.xlsx(BAB.Factors.Monthly.url, sheet=5, startRow=19, colNames=TRUE, detectDates = TRUE)


## Clean up
variable.names <- colnames(BAB.Factors.MKT.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(BAB.Factors.MKT.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.MKT.Monthly$DATE <- gsub("/", "", BAB.Factors.MKT.Monthly$DATE)
BAB.Factors.MKT.Monthly$DATE <- as.Date(paste0(substr(BAB.Factors.MKT.Monthly$DATE, 5, 8), "-", substr(BAB.Factors.MKT.Monthly$DATE, 1, 2), "-", substr(BAB.Factors.MKT.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.MKT.Monthly <- xts::xts(BAB.Factors.MKT.Monthly[, -1], order.by = BAB.Factors.MKT.Monthly$DATE)

# Check the structure of the xts object
str(BAB.Factors.MKT.Monthly)

## SAVE MKT 
# save(BAB.Factors.MKT.Monthly, file = paste0("data/BAB.Factors.MKT.Monthly.RData"), compress = "xz", compression_level = 9)


###
###   3. SMB 
BAB.Factors.SMB.Monthly <- openxlsx::read.xlsx(BAB.Factors.Monthly.url, sheet=6, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.SMB.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")


# Assigning the new column names to the data frame
colnames(BAB.Factors.SMB.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.SMB.Monthly$DATE <- gsub("/", "", BAB.Factors.SMB.Monthly$DATE)
BAB.Factors.SMB.Monthly$DATE <- as.Date(paste0(substr(BAB.Factors.SMB.Monthly$DATE, 5, 8), "-", substr(BAB.Factors.SMB.Monthly$DATE, 1, 2), "-", substr(BAB.Factors.SMB.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.SMB.Monthly <- xts::xts(BAB.Factors.SMB.Monthly[, -1], order.by = BAB.Factors.SMB.Monthly$DATE)

# Check the structure of the xts object
str(BAB.Factors.SMB.Monthly)

# SAVE SMB 
# save(BAB.Factors.SMB.Monthly, file = paste0("data/BAB.Factors.SMB.Monthly.RData"), compress = "xz", compression_level = 9)



###
###   4. HML FF
BAB.Factors.HML.FF.Monthly <- openxlsx::read.xlsx(BAB.Factors.Monthly.url, sheet=7, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.HML.FF.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(BAB.Factors.HML.FF.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.HML.FF.Monthly$DATE <- gsub("/", "", BAB.Factors.HML.FF.Monthly$DATE)
BAB.Factors.HML.FF.Monthly$DATE <- as.Date(paste0(substr(BAB.Factors.HML.FF.Monthly$DATE, 5, 8), "-", substr(BAB.Factors.HML.FF.Monthly$DATE, 1, 2), "-", substr(BAB.Factors.HML.FF.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.HML.FF.Monthly <- xts::xts(BAB.Factors.HML.FF.Monthly[, -1], order.by = BAB.Factors.HML.FF.Monthly$DATE)

# Check the structure of the xts object
str(BAB.Factors.HML.FF.Monthly)

# SAVE HML.FF 
# save(BAB.Factors.HML.FF.Monthly, file = paste0("data/BAB.Factors.HML.FF.Monthly.RData"), compress = "xz", compression_level = 9)


###
###   4. HML Devil
BAB.Factors.HML.Devil.Monthly <- openxlsx::read.xlsx(BAB.Factors.Monthly.url, sheet=8, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.HML.Devil.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(BAB.Factors.HML.Devil.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.HML.Devil.Monthly$DATE <- gsub("/", "", BAB.Factors.HML.Devil.Monthly$DATE)
BAB.Factors.HML.Devil.Monthly$DATE <- as.Date(paste0(substr(BAB.Factors.HML.Devil.Monthly$DATE, 5, 8), "-", substr(BAB.Factors.HML.Devil.Monthly$DATE, 1, 2), "-", substr(BAB.Factors.HML.Devil.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.HML.Devil.Monthly <- xts::xts(BAB.Factors.HML.Devil.Monthly[, -1], order.by = BAB.Factors.HML.Devil.Monthly$DATE)

# Check the structure of the xts object
str(BAB.Factors.HML.Devil.Monthly)

# SAVE HML.Devil 
# save(BAB.Factors.HML.Devil.Monthly, file = paste0("data/BAB.Factors.HML.Devil.Monthly.RData"), compress = "xz", compression_level = 9)



###      
###   5. Up Minus Down (UMD) factors
BAB.Factors.UMD.Monthly <- openxlsx::read.xlsx(BAB.Factors.Monthly.url, sheet=9, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.UMD.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")



# Assigning the new column names to the data frame
colnames(BAB.Factors.UMD.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.UMD.Monthly$DATE <- gsub("/", "", BAB.Factors.UMD.Monthly$DATE)
BAB.Factors.UMD.Monthly$DATE <- as.Date(paste0(substr(BAB.Factors.UMD.Monthly$DATE, 5, 8), "-", substr(BAB.Factors.UMD.Monthly$DATE, 1, 2), "-", substr(BAB.Factors.UMD.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.UMD.Monthly <- xts::xts(BAB.Factors.UMD.Monthly[, -1], order.by = BAB.Factors.UMD.Monthly$DATE)

# Check the structure of the xts object
str(BAB.Factors.UMD.Monthly)

# SAVE UMD
# save(BAB.Factors.UMD.Monthly, file = paste0("data/BAB.Factors.UMD.Monthly.RData"), compress = "xz", compression_level = 9)

###
###   6. Total Market Value of Equity (ME) factors, lagged 1 month (Billion USD)
BAB.Factors.ME_1.Monthly <- openxlsx::read.xlsx(BAB.Factors.Monthly.url, sheet=10, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.ME_1.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(BAB.Factors.ME_1.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.ME_1.Monthly$DATE <- gsub("/", "", BAB.Factors.ME_1.Monthly$DATE)
BAB.Factors.ME_1.Monthly$DATE <- as.Date(paste0(substr(BAB.Factors.ME_1.Monthly$DATE, 5, 8), "-", substr(BAB.Factors.ME_1.Monthly$DATE, 1, 2), "-", substr(BAB.Factors.ME_1.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.ME_1.Monthly <- xts::xts(BAB.Factors.ME_1.Monthly[, -1], order.by = BAB.Factors.ME_1.Monthly$DATE)

# Check the structure of the xts objectsave(BAB.Factors.ME_1.Monthly, file = paste0("data/BAB.Factors.BAB.Factors.ME_1.Monthly.Monthly.RData"), compress = "xz", compression_level = 9)
str(BAB.Factors.ME_1.Monthly)

# SAVE ME_1 
# save(BAB.Factors.ME_1.Monthly, file = paste0("data/BAB.Factors.ME_1.Monthly.RData"), compress = "xz", compression_level = 9)


###
###   7. Risk Free Rate 
BAB.Factors.RFR.Monthly <- openxlsx::read.xlsx(BAB.Factors.Monthly.url, sheet=11, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.RFR.Monthly)

# New column names
new_colnames <- c("DATE", "RFR")

# Assigning the new column names to the data frame
colnames(BAB.Factors.RFR.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.RFR.Monthly$DATE <- gsub("/", "", BAB.Factors.RFR.Monthly$DATE)
BAB.Factors.RFR.Monthly$DATE <- as.Date(paste0(substr(BAB.Factors.RFR.Monthly$DATE, 5, 8), "-", substr(BAB.Factors.RFR.Monthly$DATE, 1, 2), "-", substr(BAB.Factors.RFR.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.RFR.Monthly <- xts::xts(BAB.Factors.RFR.Monthly[, -1], order.by = BAB.Factors.RFR.Monthly$DATE)

# Check the structure of the xts object
str(BAB.Factors.RFR.Monthly)

# SAVE RFR
# save(BAB.Factors.RFR.Monthly, file = paste0("data/BAB.Factors.RFR.Monthly.RData"), compress = "xz", compression_level = 9)


## Add script to merge factor data by country below ##

