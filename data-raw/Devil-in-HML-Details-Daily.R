# The Devil in HML's Details: Factors, Daily
#
# Last Updated by AQR: April 30, 2024
#
# Period: 1926-17-31  to 2024-04-30 
#
# Source: https://www.aqr.com/Insights/Datasets/The-Devil-in-HMLs-Details-Factors-Daily

# Download in R environment
AQR_HML_Devil_url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/The-Devil-in-HMLs-Details-Factors-Daily.xlsx"
HML.DEV <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


      ###   Clean up
      variable.names <- colnames(HML.DEV)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV$DATE <- gsub("/", "", HML.DEV$DATE)
      HML.DEV$DATE <- as.Date(paste0(substr(HML.DEV$DATE, 5, 8), "-", substr(HML.DEV$DATE, 1, 2), "-", substr(HML.DEV$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV <- xts::xts(HML.DEV[, -1], order.by = HML.DEV$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV)
      
      ### SAVE 
      save(HML.DEV, file = paste0("data/HML.DEV.Daily.RData"), compress = "xz", compression_level = 9)
      


###
###   2. MKT
      HML.DEV.MKT <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=5, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.MKT)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.MKT) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.MKT$DATE <- gsub("/", "", HML.DEV.MKT$DATE)
      HML.DEV.MKT$DATE <- as.Date(paste0(substr(HML.DEV.MKT$DATE, 5, 8), "-", substr(HML.DEV.MKT$DATE, 1, 2), "-", substr(HML.DEV.MKT$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.MKT <- xts::xts(HML.DEV.MKT[, -1], order.by = HML.DEV.MKT$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.MKT)
      
      ## SAVE MKT 
#      save(HML.DEV.MKT, file = paste0("data/HML.DEV.MKT.Daily.RData"), compress = "xz", compression_level = 9)


###
###   3. SMB 
      HML.DEV.SMB <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=6, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.SMB)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.SMB) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.SMB$DATE <- gsub("/", "", HML.DEV.SMB$DATE)
      HML.DEV.SMB$DATE <- as.Date(paste0(substr(HML.DEV.SMB$DATE, 5, 8), "-", substr(HML.DEV.SMB$DATE, 1, 2), "-", substr(HML.DEV.SMB$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.SMB <- xts::xts(HML.DEV.SMB[, -1], order.by = HML.DEV.SMB$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.SMB)
      
      # SAVE SMB 
#      save(HML.DEV.SMB, file = paste0("data/HML.DEV.SMB.Daily.RData"), compress = "xz", compression_level = 9)


###
###   4. HML
      HML.DEV.HML <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=7, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.HML)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.HML) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.HML$DATE <- gsub("/", "", HML.DEV.HML$DATE)
      HML.DEV.HML$DATE <- as.Date(paste0(substr(HML.DEV.HML$DATE, 5, 8), "-", substr(HML.DEV.HML$DATE, 1, 2), "-", substr(HML.DEV.HML$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.HML <- xts::xts(HML.DEV.HML[, -1], order.by = HML.DEV.HML$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.HML)
      
      # SAVE HML 
#      save(HML.DEV.HML, file = paste0("data/HML.DEV.HML.Daily.RData"), compress = "xz", compression_level = 9)


###      
###   5. Up Minus Down (UMD) factors
      HML.DEV.UMD <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=8, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.UMD)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.UMD) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.UMD$DATE <- gsub("/", "", HML.DEV.UMD$DATE)
      HML.DEV.UMD$DATE <- as.Date(paste0(substr(HML.DEV.UMD$DATE, 5, 8), "-", substr(HML.DEV.UMD$DATE, 1, 2), "-", substr(HML.DEV.UMD$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.UMD <- xts::xts(HML.DEV.UMD[, -1], order.by = HML.DEV.UMD$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.UMD)
      
      # SAVE UMD
#      save(HML.DEV.UMB, file = paste0("data/HML.DEV.UMB.Daily.RData"), compress = "xz", compression_level = 9)

###
###   6. Total Market Value of Equity (ME) factors, lagged 1 month (Billion USD)
      HML.DEV.ME_1 <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=9, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.ME_1)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.ME_1) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.ME_1$DATE <- gsub("/", "", HML.DEV.ME_1$DATE)
      HML.DEV.ME_1$DATE <- as.Date(paste0(substr(HML.DEV.ME_1$DATE, 5, 8), "-", substr(HML.DEV.ME_1$DATE, 1, 2), "-", substr(HML.DEV.ME_1$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.ME_1 <- xts::xts(HML.DEV.ME_1[, -1], order.by = HML.DEV.ME_1$DATE)
      
      # Check 
      str(HML.DEV.ME_1)
      
      # SAVE ME_1 
#      save(HML.DEV.ME_1, file = paste0("data/HML.DEV.ME_1.Daily.RData"), compress = "xz", compression_level = 9)


###
###   7. Risk Free Rate 
      HML.DEV.RFR <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=10, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.RFR)
      
      # New column names
      new_colnames <- c("DATE", "RFR")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.RFR) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.RFR$DATE <- gsub("/", "", HML.DEV.RFR$DATE)
      HML.DEV.RFR$DATE <- as.Date(paste0(substr(HML.DEV.RFR$DATE, 5, 8), "-", substr(HML.DEV.RFR$DATE, 1, 2), "-", substr(HML.DEV.RFR$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.RFR <- xts::xts(HML.DEV.RFR[, -1], order.by = HML.DEV.RFR$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.RFR)
      
      # SAVE RFR
#      save(HML.DEV.RFR, file = paste0("data/HML.DEV.RFR.Daily.RData"), compress = "xz", compression_level = 9)


## Add script to merge factor data by country below ##

