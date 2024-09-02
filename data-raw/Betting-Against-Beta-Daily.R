# Betting Against Beta: Equity Factors Data, Daily
#
# Last Updated by AQR: April 30, 2024
#
# Period: 1930-12-01  to 2024-04-30 
#
# Source: https://www.aqr.com/Insights/Datasets/Betting-Against-Beta-Equity-Factors-Daily

# Download in R environment
Betting.Against.Beta.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Betting-Against-Beta-Equity-Factors-Daily.xlsx"
BAB.Factors.Daily <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(BAB.Factors.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")


# Assigning the new column names to the data frame
colnames(BAB.Factors.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.Daily$DATE <- gsub("/", "", BAB.Factors.Daily$DATE)

BAB.Factors.Daily$DATE <- as.Date(paste0(substr(BAB.Factors.Daily$DATE, 5, 8), "-", substr(BAB.Factors.Daily$DATE, 1, 2), "-", substr(BAB.Factors.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.Daily <- xts::xts(BAB.Factors.Daily[, -1], order.by = BAB.Factors.Daily$DATE)

# Check the structure of the xts object
str(BAB.Factors.Daily)


# Save to sandbox if needed
save(BAB.Factors.Daily, file = paste0("data/BAB.Factors.Daily.RData"), compress = "xz", compression_level = 9)

###
###   2. MKT

BAB.Factors.MKT.Daily <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=5, startRow=19, colNames=TRUE, detectDates = TRUE)


## Clean up
variable.names <- colnames(BAB.Factors.MKT.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(BAB.Factors.MKT.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.MKT.Daily$DATE <- gsub("/", "", BAB.Factors.MKT.Daily$DATE)
BAB.Factors.MKT.Daily$DATE <- as.Date(paste0(substr(BAB.Factors.MKT.Daily$DATE, 5, 8), "-", substr(BAB.Factors.MKT.Daily$DATE, 1, 2), "-", substr(BAB.Factors.MKT.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.MKT.Daily <- xts::xts(BAB.Factors.MKT.Daily[, -1], order.by = BAB.Factors.MKT.Daily$DATE)

# Check the structure of the xts object
str(BAB.Factors.MKT.Daily)

## SAVE MKT 
save(BAB.Factors.MKT.Daily, file = paste0("data/BAB.Factors.MKT.Daily.RData"), compress = "xz", compression_level = 9)


###
###   3. SMB 
BAB.Factors.SMB.Daily <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=6, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.SMB.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")


# Assigning the new column names to the data frame
colnames(BAB.Factors.SMB.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.SMB.Daily$DATE <- gsub("/", "", BAB.Factors.SMB.Daily$DATE)
BAB.Factors.SMB.Daily$DATE <- as.Date(paste0(substr(BAB.Factors.SMB.Daily$DATE, 5, 8), "-", substr(BAB.Factors.SMB.Daily$DATE, 1, 2), "-", substr(BAB.Factors.SMB.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.SMB.Daily <- xts::xts(BAB.Factors.SMB.Daily[, -1], order.by = BAB.Factors.SMB.Daily$DATE)

# Check the structure of the xts object
str(BAB.Factors.SMB.Daily)

# SAVE SMB 
save(BAB.Factors.SMB.Daily, file = paste0("data/BAB.Factors.SMB.Daily.RData"), compress = "xz", compression_level = 9)



###
###   4. HML FF
BAB.Factors.HML.FF.Daily <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=7, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.HML.FF.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(BAB.Factors.HML.FF.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.HML.FF.Daily$DATE <- gsub("/", "", BAB.Factors.HML.FF.Daily$DATE)
BAB.Factors.HML.FF.Daily$DATE <- as.Date(paste0(substr(BAB.Factors.HML.FF.Daily$DATE, 5, 8), "-", substr(BAB.Factors.HML.FF.Daily$DATE, 1, 2), "-", substr(BAB.Factors.HML.FF.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.HML.FF.Daily <- xts::xts(BAB.Factors.HML.FF.Daily[, -1], order.by = BAB.Factors.HML.FF.Daily$DATE)

# Check the structure of the xts object
str(BAB.Factors.HML.FF.Daily)

# SAVE HML.FF 
save(BAB.Factors.HML.FF.Daily, file = paste0("data/BAB.Factors.HML.FF.Daily.RData"), compress = "xz", compression_level = 9)


###
###   4. HML Devil
BAB.Factors.HML.Devil.Daily <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=8, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.HML.Devil.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(BAB.Factors.HML.Devil.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.HML.Devil.Daily$DATE <- gsub("/", "", BAB.Factors.HML.Devil.Daily$DATE)
BAB.Factors.HML.Devil.Daily$DATE <- as.Date(paste0(substr(BAB.Factors.HML.Devil.Daily$DATE, 5, 8), "-", substr(BAB.Factors.HML.Devil.Daily$DATE, 1, 2), "-", substr(BAB.Factors.HML.Devil.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.HML.Devil.Daily <- xts::xts(BAB.Factors.HML.Devil.Daily[, -1], order.by = BAB.Factors.HML.Devil.Daily$DATE)

# Check the structure of the xts object
str(BAB.Factors.HML.Devil.Daily)

# SAVE HML.Devil 
save(BAB.Factors.HML.Devil.Daily, file = paste0("data/BAB.Factors.HML.Devil.Daily.RData"), compress = "xz", compression_level = 9)



###      
###   5. Up Minus Down (UMD) factors
BAB.Factors.UMD.Daily <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=9, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.UMD.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")



# Assigning the new column names to the data frame
colnames(BAB.Factors.UMD.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.UMD.Daily$DATE <- gsub("/", "", BAB.Factors.UMD.Daily$DATE)
BAB.Factors.UMD.Daily$DATE <- as.Date(paste0(substr(BAB.Factors.UMD.Daily$DATE, 5, 8), "-", substr(BAB.Factors.UMD.Daily$DATE, 1, 2), "-", substr(BAB.Factors.UMD.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.UMD.Daily <- xts::xts(BAB.Factors.UMD.Daily[, -1], order.by = BAB.Factors.UMD.Daily$DATE)

# Check the structure of the xts object
str(BAB.Factors.UMD.Daily)

# SAVE UMD
save(BAB.Factors.UMD.Daily, file = paste0("data/BAB.Factors.UMD.Daily.RData"), compress = "xz", compression_level = 9)


###
###   7. Risk Free Rate 
BAB.Factors.RFR.Daily <- openxlsx::read.xlsx(Betting.Against.Beta.url, sheet=10, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(BAB.Factors.RFR.Daily)

# New column names
new_colnames <- c("DATE", "RFR")

# Assigning the new column names to the data frame
colnames(BAB.Factors.RFR.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
BAB.Factors.RFR.Daily$DATE <- gsub("/", "", BAB.Factors.RFR.Daily$DATE)
BAB.Factors.RFR.Daily$DATE <- as.Date(paste0(substr(BAB.Factors.RFR.Daily$DATE, 5, 8), "-", substr(BAB.Factors.RFR.Daily$DATE, 1, 2), "-", substr(BAB.Factors.RFR.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
BAB.Factors.RFR.Daily <- xts::xts(BAB.Factors.RFR.Daily[, -1], order.by = BAB.Factors.RFR.Daily$DATE)

# Check the structure of the xts object
str(BAB.Factors.RFR.Daily)

# SAVE RFR
save(BAB.Factors.RFR.Daily, file = paste0("data/BAB.Factors.RFR.Daily.RData"), compress = "xz", compression_level = 9)


## Add script to merge factor data by country below ##

