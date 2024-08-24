# The Devil in HML's Details: Factors, Monthly
#
# Last Updated by AQR: April 30, 2024
#
# Period: 1926-17-31  to 2024-04-30 
#
# Source: https://www.aqr.com/Insights/Datasets/The-Devil-in-HMLs-Details-Factors-Monthly

# Download in R environment
AQR_HML_Devil_url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/The-Devil-in-HMLs-Details-Factors-Monthly.xlsx"
HML.DEV.Monthly <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


###   Clean up
      variable.names <- colnames(HML.DEV.Monthly)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.Monthly) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.Monthly$DATE <- gsub("/", "", HML.DEV.Monthly$DATE)
      HML.DEV.Monthly$DATE <- as.Date(paste0(substr(HML.DEV.Monthly$DATE, 5, 8), "-", substr(HML.DEV.Monthly$DATE, 1, 2), "-", substr(HML.DEV.Monthly$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.Monthly <- xts::xts(HML.DEV.Monthly[, -1], order.by = HML.DEV.Monthly$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.Monthly)
      
      ### SAVE 
      save(HML.DEV.Monthly, file = paste0("data/HML.DEV.Monthly.RData"), compress = "xz", compression_level = 9)



###
###   2. MKT
      HML.DEV.MKT.Monthly <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=5, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.MKT.Monthly)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.MKT.Monthly) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.MKT.Monthly$DATE <- gsub("/", "", HML.DEV.MKT.Monthly$DATE)
      HML.DEV.MKT.Monthly$DATE <- as.Date(paste0(substr(HML.DEV.MKT.Monthly$DATE, 5, 8), "-", substr(HML.DEV.MKT.Monthly$DATE, 1, 2), "-", substr(HML.DEV.MKT.Monthly$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.MKT.Monthly <- xts::xts(HML.DEV.MKT.Monthly[, -1], order.by = HML.DEV.MKT.Monthly$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.MKT.Monthly)
      
      ## SAVE MKT 
      save(HML.DEV.MKT.Monthly, file = paste0("data/HML.DEV.MKT.Monthly.RData"), compress = "xz", compression_level = 9)


###
###   3. SMB 
      HML.DEV.SMB.Monthly <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=6, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.SMB.Monthly)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.SMB.Monthly) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.SMB.Monthly$DATE <- gsub("/", "", HML.DEV.SMB.Monthly$DATE)
      HML.DEV.SMB.Monthly$DATE <- as.Date(paste0(substr(HML.DEV.SMB.Monthly$DATE, 5, 8), "-", substr(HML.DEV.SMB.Monthly$DATE, 1, 2), "-", substr(HML.DEV.SMB.Monthly$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.SMB.Monthly <- xts::xts(HML.DEV.SMB.Monthly[, -1], order.by = HML.DEV.SMB.Monthly$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.SMB.Monthly)
      
      # SAVE SMB 
      save(HML.DEV.SMB.Monthly, file = paste0("data/HML.DEV.SMB.Monthly.RData"), compress = "xz", compression_level = 9)

      
###
###   4. HML
      HML.DEV.HML.Monthly <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=7, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.HML.Monthly)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.HML.Monthly) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.HML.Monthly$DATE <- gsub("/", "", HML.DEV.HML.Monthly$DATE)
      HML.DEV.HML.Monthly$DATE <- as.Date(paste0(substr(HML.DEV.HML.Monthly$DATE, 5, 8), "-", substr(HML.DEV.HML.Monthly$DATE, 1, 2), "-", substr(HML.DEV.HML.Monthly$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.HML.Monthly <- xts::xts(HML.DEV.HML.Monthly[, -1], order.by = HML.DEV.HML.Monthly$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.HML.Monthly)
      
      # SAVE HML 
      save(HML.DEV.HML.Monthly, file = paste0("data/HML.DEV.HML.Monthly.RData"), compress = "xz", compression_level = 9)
    
      
###      
###   5. Up Minus Down (UMD) factors
      HML.DEV.UMD.Monthly <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=8, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.UMD.Monthly)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.UMD.Monthly) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.UMD.Monthly$DATE <- gsub("/", "", HML.DEV.UMD.Monthly$DATE)
      HML.DEV.UMD.Monthly$DATE <- as.Date(paste0(substr(HML.DEV.UMD.Monthly$DATE, 5, 8), "-", substr(HML.DEV.UMD.Monthly$DATE, 1, 2), "-", substr(HML.DEV.UMD.Monthly$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.UMD.Monthly <- xts::xts(HML.DEV.UMD.Monthly[, -1], order.by = HML.DEV.UMD.Monthly$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.UMD.Monthly)
      
      # SAVE UMD
      save(HML.DEV.UMD.Monthly, file = paste0("data/HML.DEV.UMD.Monthly.RData"), compress = "xz", compression_level = 9)

###
###   6. Total Market Value of Equity (ME) factors, lagged 1 month (Billion USD)
      HML.DEV.ME_1.Monthly <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=9, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.ME_1.Monthly)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.ME_1.Monthly) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.ME_1.Monthly$DATE <- gsub("/", "", HML.DEV.ME_1.Monthly$DATE)
      HML.DEV.ME_1.Monthly$DATE <- as.Date(paste0(substr(HML.DEV.ME_1.Monthly$DATE, 5, 8), "-", substr(HML.DEV.ME_1.Monthly$DATE, 1, 2), "-", substr(HML.DEV.ME_1.Monthly$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.ME_1.Monthly <- xts::xts(HML.DEV.ME_1.Monthly[, -1], order.by = HML.DEV.ME_1.Monthly$DATE)
      
      # Check the structure of the xts objectsave(HML.DEV.ME_1.Monthly, file = paste0("data/HML.Devil.HML.DEV.ME_1.Monthly.Monthly.RData"), compress = "xz", compression_level = 9)
      str(HML.DEV.ME_1.Monthly)
       
      # SAVE ME_1 
     save(HML.DEV.ME_1.Monthly, file = paste0("data/HML.DEV.ME_1.Monthly.RData"), compress = "xz", compression_level = 9)


###
###   7. Risk Free Rate 
      HML.DEV.RFR.Monthly <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=10, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.RFR.Monthly)
      
      # New column names
      new_colnames <- c("DATE", "RFR")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.RFR.Monthly) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.RFR.Monthly$DATE <- gsub("/", "", HML.DEV.RFR.Monthly$DATE)
      HML.DEV.RFR.Monthly$DATE <- as.Date(paste0(substr(HML.DEV.RFR.Monthly$DATE, 5, 8), "-", substr(HML.DEV.RFR.Monthly$DATE, 1, 2), "-", substr(HML.DEV.RFR.Monthly$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.RFR.Monthly <- xts::xts(HML.DEV.RFR.Monthly[, -1], order.by = HML.DEV.RFR.Monthly$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.RFR.Monthly)
      
      # SAVE RFR
      save(HML.DEV.RFR.Monthly, file = paste0("data/HML.DEV.RFR.Monthly.RData"), compress = "xz", compression_level = 9)


## Add script to merge factor data by country below ##

