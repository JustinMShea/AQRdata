# Quality Minus Junk: Factors, Monthly
#
# Last Updated by AQR: April 30, 2024 
#
# Period: 1957-07-31 to 2024-04-30
#
# Source: https://www.aqr.com/Insights/Datasets/Quality-Minus-Junk-Factors-Daily

# Download in R environment
QMJ.Factors.Monthly.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Quality-Minus-Junk-Factors-Monthly.xlsx"
QMJ.Factors.Monthly <- openxlsx::read.xlsx(QMJ.Factors.Monthly.url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


## Importeded from Value Momentum Everywhere 

## Clean up

variable.names <- colnames(QMJ.Factors.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK", 
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR", 
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AGE.GL", "AGE.GL.US", "AGE.EU", "AGE.NA", "AGE.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.Monthly) <- new_colnames

QMJ.Factors.Monthly$DATE <- gsub("/", "", QMJ.Factors.Monthly$DATE)

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.Monthly$DATE <- as.Date(paste0(substr(QMJ.Factors.Monthly$DATE, 5, 8), "-", 
                                   substr(QMJ.Factors.Monthly$DATE, 1, 2), "-", 
                                   substr(QMJ.Factors.Monthly$DATE, 3, 4)))


# Identifying the columns to be converted (all except the DATE column)
numeric_columns <- setdiff(names(QMJ.Factors.Monthly), "DATE")

# Converting the specified columns from character to numeric
QMJ.Factors.Monthly[numeric_columns] <- lapply(QMJ.Factors.Monthly[numeric_columns], as.numeric)   


# QMJ.Factors.Monthly <- QMJ.Factors.Monthly[1:804, ]


QMJ.Factors.Monthly <- QMJ.Factors.Monthly[!is.na(QMJ.Factors.Monthly$DATE), ]

na.trim(QMJ.Factors.Monthly$DATE)

# Convert the data.frame to xts object, using the Date column as the index

QMJ.Factors.Monthly <- xts::xts(QMJ.Factors.Monthly[, -1], order.by = QMJ.Factors.Monthly$DATE)


# Check the structure of the xts object
str(QMJ.Factors.Monthly)


# Save to sandbox if needed 
save(QMJ.Factors.Monthly, file = paste0("data/QMJ.Factors.Monthly.RData"), compress = "xz", compression_level = 9)



###
###   2. MKT

QMJ.Factors.MKT.Monthly <- openxlsx::read.xlsx(QMJ.Factors.Monthly.url, sheet=5, startRow=19, colNames=TRUE, detectDates = TRUE)


## Clean up
variable.names <- colnames(QMJ.Factors.MKT.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.MKT.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.MKT.Monthly$DATE <- gsub("/", "", QMJ.Factors.MKT.Monthly$DATE)
QMJ.Factors.MKT.Monthly$DATE <- as.Date(paste0(substr(QMJ.Factors.MKT.Monthly$DATE, 5, 8), "-", substr(QMJ.Factors.MKT.Monthly$DATE, 1, 2), "-", substr(QMJ.Factors.MKT.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.MKT.Monthly <- xts::xts(QMJ.Factors.MKT.Monthly[, -1], order.by = QMJ.Factors.MKT.Monthly$DATE)

# Check the structure of the xts object
str(QMJ.Factors.MKT.Monthly)

## SAVE MKT 
save(QMJ.Factors.MKT.Monthly, file = paste0("data/QMJ.Factors.MKT.Monthly.RData"), compress = "xz", compression_level = 9)


###
###   3. SMB 
QMJ.Factors.SMB.Monthly <- openxlsx::read.xlsx(QMJ.Factors.Monthly.url, sheet=6, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.SMB.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")


# Assigning the new column names to the data frame
colnames(QMJ.Factors.SMB.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.SMB.Monthly$DATE <- gsub("/", "", QMJ.Factors.SMB.Monthly$DATE)
QMJ.Factors.SMB.Monthly$DATE <- as.Date(paste0(substr(QMJ.Factors.SMB.Monthly$DATE, 5, 8), "-", substr(QMJ.Factors.SMB.Monthly$DATE, 1, 2), "-", substr(QMJ.Factors.SMB.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.SMB.Monthly <- xts::xts(QMJ.Factors.SMB.Monthly[, -1], order.by = QMJ.Factors.SMB.Monthly$DATE)

# Check the structure of the xts object
str(QMJ.Factors.SMB.Monthly)

# SAVE SMB 
save(QMJ.Factors.SMB.Monthly, file = paste0("data/QMJ.Factors.SMB.Monthly.RData"), compress = "xz", compression_level = 9)



###
###   4. HML FF
QMJ.Factors.HML.FF.Monthly <- openxlsx::read.xlsx(QMJ.Factors.Monthly.url, sheet=7, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.HML.FF.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.HML.FF.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.HML.FF.Monthly$DATE <- gsub("/", "", QMJ.Factors.HML.FF.Monthly$DATE)
QMJ.Factors.HML.FF.Monthly$DATE <- as.Date(paste0(substr(QMJ.Factors.HML.FF.Monthly$DATE, 5, 8), "-", substr(QMJ.Factors.HML.FF.Monthly$DATE, 1, 2), "-", substr(QMJ.Factors.HML.FF.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.HML.FF.Monthly <- xts::xts(QMJ.Factors.HML.FF.Monthly[, -1], order.by = QMJ.Factors.HML.FF.Monthly$DATE)

# Check the structure of the xts object
str(QMJ.Factors.HML.FF.Monthly)

# SAVE HML.FF 
save(QMJ.Factors.HML.FF.Monthly, file = paste0("data/QMJ.Factors.HML.FF.Monthly.RData"), compress = "xz", compression_level = 9)


###
###   4. HML Devil
QMJ.Factors.HML.Devil.Monthly <- openxlsx::read.xlsx(QMJ.Factors.Monthly.url, sheet=8, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.HML.Devil.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.HML.Devil.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.HML.Devil.Monthly$DATE <- gsub("/", "", QMJ.Factors.HML.Devil.Monthly$DATE)
QMJ.Factors.HML.Devil.Monthly$DATE <- as.Date(paste0(substr(QMJ.Factors.HML.Devil.Monthly$DATE, 5, 8), "-", substr(QMJ.Factors.HML.Devil.Monthly$DATE, 1, 2), "-", substr(QMJ.Factors.HML.Devil.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.HML.Devil.Monthly <- xts::xts(QMJ.Factors.HML.Devil.Monthly[, -1], order.by = QMJ.Factors.HML.Devil.Monthly$DATE)

# Check the structure of the xts object
str(QMJ.Factors.HML.Devil.Monthly)

# SAVE HML.Devil 
save(QMJ.Factors.HML.Devil.Monthly, file = paste0("data/QMJ.Factors.HML.Devil.Monthly.RData"), compress = "xz", compression_level = 9)



###      
###   5. Up Minus Down (UMD) factors
QMJ.Factors.UMD.Monthly <- openxlsx::read.xlsx(QMJ.Factors.Monthly.url, sheet=9, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.UMD.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")



# Assigning the new column names to the data frame
colnames(QMJ.Factors.UMD.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.UMD.Monthly$DATE <- gsub("/", "", QMJ.Factors.UMD.Monthly$DATE)
QMJ.Factors.UMD.Monthly$DATE <- as.Date(paste0(substr(QMJ.Factors.UMD.Monthly$DATE, 5, 8), "-", substr(QMJ.Factors.UMD.Monthly$DATE, 1, 2), "-", substr(QMJ.Factors.UMD.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.UMD.Monthly <- xts::xts(QMJ.Factors.UMD.Monthly[, -1], order.by = QMJ.Factors.UMD.Monthly$DATE)

# Check the structure of the xts object
str(QMJ.Factors.UMD.Monthly)

# SAVE UMD
save(QMJ.Factors.UMD.Monthly, file = paste0("data/QMJ.Factors.UMD.Monthly.RData"), compress = "xz", compression_level = 9)

###
###   6. Total Market Value of Equity (ME) factors, lagged 1 month (Billion USD)
QMJ.Factors.ME_1.Monthly <- openxlsx::read.xlsx(QMJ.Factors.Monthly.url, sheet=10, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.ME_1.Monthly)

# New column names
new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                  "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                  "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                  "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.ME_1.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.ME_1.Monthly$DATE <- gsub("/", "", QMJ.Factors.ME_1.Monthly$DATE)
QMJ.Factors.ME_1.Monthly$DATE <- as.Date(paste0(substr(QMJ.Factors.ME_1.Monthly$DATE, 5, 8), "-", substr(QMJ.Factors.ME_1.Monthly$DATE, 1, 2), "-", substr(QMJ.Factors.ME_1.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.ME_1.Monthly <- xts::xts(QMJ.Factors.ME_1.Monthly[, -1], order.by = QMJ.Factors.ME_1.Monthly$DATE)

# Check the structure of the xts objectsave(QMJ.Factors.ME_1.Monthly, file = paste0("data/QMJ.Factorsil.QMJ.Factors.ME_1.Monthly.Monthly.RData"), compress = "xz", compression_level = 9)
str(QMJ.Factors.ME_1.Monthly)

# SAVE ME_1 
save(QMJ.Factors.ME_1.Monthly, file = paste0("data/QMJ.Factors.ME_1.Monthly.RData"), compress = "xz", compression_level = 9)


###
###   7. Risk Free Rate 
QMJ.Factors.RFR.Monthly <- openxlsx::read.xlsx(QMJ.Factors.Monthly.url, sheet=11, startRow=19, colNames=TRUE, detectDates = TRUE)

## Clean up
variable.names <- colnames(QMJ.Factors.RFR.Monthly)

# New column names
new_colnames <- c("DATE", "RFR")

# Assigning the new column names to the data frame
colnames(QMJ.Factors.RFR.Monthly) <- new_colnames

# Convert the Date column to character and then to date format YYYY-MM
QMJ.Factors.RFR.Monthly$DATE <- gsub("/", "", QMJ.Factors.RFR.Monthly$DATE)
QMJ.Factors.RFR.Monthly$DATE <- as.Date(paste0(substr(QMJ.Factors.RFR.Monthly$DATE, 5, 8), "-", substr(QMJ.Factors.RFR.Monthly$DATE, 1, 2), "-", substr(QMJ.Factors.RFR.Monthly$DATE, 3, 4)))

# Convert the data.frame to xts object, using the Date column as the index
QMJ.Factors.RFR.Monthly <- xts::xts(QMJ.Factors.RFR.Monthly[, -1], order.by = QMJ.Factors.RFR.Monthly$DATE)

# Check the structure of the xts object
str(QMJ.Factors.RFR.Monthly)

# SAVE RFR
save(QMJ.Factors.RFR.Monthly, file = paste0("data/QMJ.Factors.RFR.Monthly.RData"), compress = "xz", compression_level = 9)


## Add script to merge factor data by country below ##

