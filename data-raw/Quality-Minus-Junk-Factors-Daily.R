# Quality Minus Junk: Factors, Daily
#
# Last Updated by AQR: April 30, 2024 
#
# Period: 1957-07-31 to 2024-04-30
#
# Source: https://www.aqr.com/Insights/Datasets/Quality-Minus-Junk-Factors-Daily

# Download in R environment
QMJ.Factors.Daily.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Quality-Minus-Junk-Factors-Daily.xlsx"
QMJ.Factors.Daily <- openxlsx::read.xlsx(QMJ.Factors.Daily.url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


## IMporteded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(QMJ.Factors.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK", 
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR", 
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AGE.GL", "AGE.GL.US", "AGE.EU", "AGE.NA", "AGE.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.Daily) <- new_colnames

QMJ.Factors.Daily$DATE <- gsub("/", "", QMJ.Factors.Daily$DATE)

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.Daily$DATE <- as.Date(paste0(substr(QMJ.Factors.Daily$DATE, 5, 8), "-", 
                                          substr(QMJ.Factors.Daily$DATE, 1, 2), "-", 
                                          substr(QMJ.Factors.Daily$DATE, 3, 4)))



# Convert the data.frame to xts object, using the Date column as the index

QMJ.Factors.Daily <- xts::xts(QMJ.Factors.Daily[, -1], order.by = QMJ.Factors.Daily$DATE)

# Check the structure of the xts object
str(QMJ.Factors.Daily)


# Save to sandbox if needed
save(QMJ.Factors.Daily, file = paste0("data/QMJ.Factors.Daily.RData"), compress = "xz", compression_level = 9)

###
###   2. MKT

QMJ.Factors.MKT.Daily <- openxlsx::read.xlsx(QMJ.Factors.Daily.url, sheet=5, startRow=19, colNames=TRUE, detectDates = TRUE)


## Clean up
variable.names <- colnames(QMJ.Factors.MKT.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.MKT.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.MKT.Daily$DATE <- gsub("/", "", QMJ.Factors.MKT.Daily$DATE)
QMJ.Factors.MKT.Daily$DATE <- as.Date(paste0(substr(QMJ.Factors.MKT.Daily$DATE, 5, 8), "-", substr(QMJ.Factors.MKT.Daily$DATE, 1, 2), "-", substr(QMJ.Factors.MKT.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.MKT.Daily <- xts::xts(QMJ.Factors.MKT.Daily[, -1], order.by = QMJ.Factors.MKT.Daily$DATE)

# Check the structure of the xts object
str(QMJ.Factors.MKT.Daily)

## SAVE MKT 
# save(QMJ.Factors.MKT.Daily, file = paste0("data/QMJ.Factors.MKT.Daily.RData"), compress = "xz", compression_level = 9)


###
###   3. SMB 
QMJ.Factors.SMB.Daily <- openxlsx::read.xlsx(QMJ.Factors.Daily.url, sheet=6, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.SMB.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")


# Assigning the new column names to the data frame
colnames(QMJ.Factors.SMB.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.SMB.Daily$DATE <- gsub("/", "", QMJ.Factors.SMB.Daily$DATE)
QMJ.Factors.SMB.Daily$DATE <- as.Date(paste0(substr(QMJ.Factors.SMB.Daily$DATE, 5, 8), "-", substr(QMJ.Factors.SMB.Daily$DATE, 1, 2), "-", substr(QMJ.Factors.SMB.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.SMB.Daily <- xts::xts(QMJ.Factors.SMB.Daily[, -1], order.by = QMJ.Factors.SMB.Daily$DATE)

# Check the structure of the xts object
str(QMJ.Factors.SMB.Daily)

# SAVE SMB 
# save(QMJ.Factors.SMB.Daily, file = paste0("data/QMJ.Factors.SMB.Daily.RData"), compress = "xz", compression_level = 9)



###
###   4. HML FF
QMJ.Factors.HML.FF.Daily <- openxlsx::read.xlsx(QMJ.Factors.Daily.url, sheet=7, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.HML.FF.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.HML.FF.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.HML.FF.Daily$DATE <- gsub("/", "", QMJ.Factors.HML.FF.Daily$DATE)
QMJ.Factors.HML.FF.Daily$DATE <- as.Date(paste0(substr(QMJ.Factors.HML.FF.Daily$DATE, 5, 8), "-", substr(QMJ.Factors.HML.FF.Daily$DATE, 1, 2), "-", substr(QMJ.Factors.HML.FF.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.HML.FF.Daily <- xts::xts(QMJ.Factors.HML.FF.Daily[, -1], order.by = QMJ.Factors.HML.FF.Daily$DATE)

# Check the structure of the xts object
str(QMJ.Factors.HML.FF.Daily)

# SAVE HML.FF 
# save(QMJ.Factors.HML.FF.Daily, file = paste0("data/QMJ.Factors.HML.FF.Daily.RData"), compress = "xz", compression_level = 9)


###
###   4. HML Devil
QMJ.Factors.HML.Devil.Daily <- openxlsx::read.xlsx(QMJ.Factors.Daily.url, sheet=8, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.HML.Devil.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.HML.Devil.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.HML.Devil.Daily$DATE <- gsub("/", "", QMJ.Factors.HML.Devil.Daily$DATE)
QMJ.Factors.HML.Devil.Daily$DATE <- as.Date(paste0(substr(QMJ.Factors.HML.Devil.Daily$DATE, 5, 8), "-", substr(QMJ.Factors.HML.Devil.Daily$DATE, 1, 2), "-", substr(QMJ.Factors.HML.Devil.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.HML.Devil.Daily <- xts::xts(QMJ.Factors.HML.Devil.Daily[, -1], order.by = QMJ.Factors.HML.Devil.Daily$DATE)

# Check the structure of the xts object
str(QMJ.Factors.HML.Devil.Daily)

# SAVE HML.Devil 
# save(QMJ.Factors.HML.Devil.Daily, file = paste0("data/QMJ.Factors.HML.Devil.Daily.RData"), compress = "xz", compression_level = 9)



###      
###   5. Up Minus Down (UMD) factors
QMJ.Factors.UMD.Daily <- openxlsx::read.xlsx(QMJ.Factors.Daily.url, sheet=9, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.UMD.Daily)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")



# Assigning the new column names to the data frame
colnames(QMJ.Factors.UMD.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.UMD.Daily$DATE <- gsub("/", "", QMJ.Factors.UMD.Daily$DATE)
QMJ.Factors.UMD.Daily$DATE <- as.Date(paste0(substr(QMJ.Factors.UMD.Daily$DATE, 5, 8), "-", substr(QMJ.Factors.UMD.Daily$DATE, 1, 2), "-", substr(QMJ.Factors.UMD.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.UMD.Daily <- xts::xts(QMJ.Factors.UMD.Daily[, -1], order.by = QMJ.Factors.UMD.Daily$DATE)

# Check the structure of the xts object
str(QMJ.Factors.UMD.Daily)

# SAVE UMD
# save(QMJ.Factors.UMD.Daily, file = paste0("data/QMJ.Factors.UMD.Daily.RData"), compress = "xz", compression_level = 9)


###
###   7. Risk Free Rate 
QMJ.Factors.RFR.Daily <- openxlsx::read.xlsx(QMJ.Factors.Daily.url, sheet=10, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.RFR.Daily)

# New column names
new_colnames <- c("DATE", "RFR")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.RFR.Daily) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.RFR.Daily$DATE <- gsub("/", "", QMJ.Factors.RFR.Daily$DATE)
QMJ.Factors.RFR.Daily$DATE <- as.Date(paste0(substr(QMJ.Factors.RFR.Daily$DATE, 5, 8), "-", substr(QMJ.Factors.RFR.Daily$DATE, 1, 2), "-", substr(QMJ.Factors.RFR.Daily$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.RFR.Daily <- xts::xts(QMJ.Factors.RFR.Daily[, -1], order.by = QMJ.Factors.RFR.Daily$DATE)

# Check the structure of the xts object
str(QMJ.Factors.RFR.Daily)

# SAVE RFR
# save(QMJ.Factors.RFR.Daily, file = paste0("data/QMJ.Factors.RFR.Daily.RData"), compress = "xz", compression_level = 9)


## Add script to merge factor data by country below ##

