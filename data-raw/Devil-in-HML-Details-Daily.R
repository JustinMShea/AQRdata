# The Devil in HML's Details: Factors, Daily
#
# Last Updated by AQR: April 30, 2024
#
# Period: 1926-17-31  to 2024-04-30 
#
# Source: https://www.aqr.com/Insights/Datasets/The-Devil-in-HMLs-Details-Factors-Daily

# Download in R environment
AQR_HML_Devil_url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/The-Devil-in-HMLs-Details-Factors-Daily.xlsx"
HML.DEV.Daily <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=1, startRow=19, colNames=TRUE, detectDates = TRUE)


      ###   Clean up
      variable.names <- colnames(HML.DEV.Daily)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.Daily) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.Daily$DATE <- gsub("/", "", HML.DEV.Daily$DATE)
      HML.DEV.Daily$DATE <- as.Date(paste0(substr(HML.DEV.Daily$DATE, 5, 8), "-", substr(HML.DEV.Daily$DATE, 1, 2), "-", substr(HML.DEV.Daily$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.Daily <- xts::xts(HML.DEV.Daily[, -1], order.by = HML.DEV.Daily$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.Daily)
      
      ### SAVE 
      save(HML.DEV.Daily, file = paste0("data/HML.DEV.Daily.RData"), compress = "xz", compression_level = 9)
      


###
###   2. MKT
      HML.DEV.MKT.Daily <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=5, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.MKT.Daily)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.MKT.Daily) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.MKT.Daily$DATE <- gsub("/", "", HML.DEV.MKT.Daily$DATE)
      HML.DEV.MKT.Daily$DATE <- as.Date(paste0(substr(HML.DEV.MKT.Daily$DATE, 5, 8), "-", substr(HML.DEV.MKT.Daily$DATE, 1, 2), "-", substr(HML.DEV.MKT.Daily$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.MKT.Daily <- xts::xts(HML.DEV.MKT.Daily[, -1], order.by = HML.DEV.MKT.Daily$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.MKT.Daily)
      
      ## SAVE MKT 
      save(HML.DEV.MKT.Daily, file = paste0("data/HML.DEV.MKT.Daily.RData"), compress = "xz", compression_level = 9)


###
###   3. SMB 
      HML.DEV.SMB.Daily <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=6, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.SMB.Daily)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.SMB.Daily) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.SMB.Daily$DATE <- gsub("/", "", HML.DEV.SMB.Daily$DATE)
      HML.DEV.SMB.Daily$DATE <- as.Date(paste0(substr(HML.DEV.SMB.Daily$DATE, 5, 8), "-", substr(HML.DEV.SMB.Daily$DATE, 1, 2), "-", substr(HML.DEV.SMB.Daily$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.SMB.Daily <- xts::xts(HML.DEV.SMB.Daily[, -1], order.by = HML.DEV.SMB.Daily$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.SMB.Daily)
      
      # SAVE SMB 
      save(HML.DEV.SMB.Daily, file = paste0("data/HML.DEV.SMB.Daily.RData"), compress = "xz", compression_level = 9)


###
###   4. HML
      HML.DEV.HML.Daily <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=7, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.HML.Daily)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.HML.Daily) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.HML.Daily$DATE <- gsub("/", "", HML.DEV.HML.Daily$DATE)
      HML.DEV.HML.Daily$DATE <- as.Date(paste0(substr(HML.DEV.HML.Daily$DATE, 5, 8), "-", substr(HML.DEV.HML.Daily$DATE, 1, 2), "-", substr(HML.DEV.HML.Daily$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.HML.Daily <- xts::xts(HML.DEV.HML.Daily[, -1], order.by = HML.DEV.HML.Daily$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.HML.Daily)
      
      # SAVE HML 
      save(HML.DEV.HML.Daily, file = paste0("data/HML.DEV.HML.Daily.RData"), compress = "xz", compression_level = 9)


###      
###   5. Up Minus Down (UMD) factors
      HML.DEV.UMD.Daily <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=8, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.UMD.Daily)
      
      # New column names
      new_colnames <- c("DATE", "EQ.AUS", "EQ.AUT", "EQ.BEL", "EQ.CAN", "EQ.CHE", "EQ.DEU", "EQ.DNK",
                        "EQ.ESP", "EQ.FIN", "EQ.FRA", "EQ.GBR", "EQ.GRC", "EQ.HKG", "EQ.IRL", "EQ.ISR",  
                        "EQ.ITA", "EQ.JPN", "EQ.NLD", "EQ.NOR", "EQ.NZL", "EQ.PRT", "EQ.SGP", "EQ.SWE", 
                        "EQ.USA", "AEP.GL", "AEP.GLUS", "AEP.EU", "AEP.NA", "AEP.PA")
      
      
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.UMD.Daily) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.UMD.Daily$DATE <- gsub("/", "", HML.DEV.UMD.Daily$DATE)
      HML.DEV.UMD.Daily$DATE <- as.Date(paste0(substr(HML.DEV.UMD.Daily$DATE, 5, 8), "-", substr(HML.DEV.UMD.Daily$DATE, 1, 2), "-", substr(HML.DEV.UMD.Daily$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.UMD.Daily <- xts::xts(HML.DEV.UMD.Daily[, -1], order.by = HML.DEV.UMD.Daily$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.UMD.Daily)
      
      # SAVE UMD
      save(HML.DEV.UMD.Daily, file = paste0("data/HML.DEV.UMD.Daily.RData"), compress = "xz", compression_level = 9)


###
###   7. Risk Free Rate 
      HML.DEV.RFR.Daily <- openxlsx::read.xlsx(AQR_HML_Devil_url, sheet=9, startRow=19, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(HML.DEV.RFR.Daily)
      
      # New column names
      new_colnames <- c("DATE", "RFR")
      
      # Assigning the new column names to the data frame
      colnames(HML.DEV.RFR.Daily) <- new_colnames
      
      # Convert the Date column to character and then to date format YYYY-MM
      HML.DEV.RFR.Daily$DATE <- gsub("/", "", HML.DEV.RFR.Daily$DATE)
      HML.DEV.RFR.Daily$DATE <- as.Date(paste0(substr(HML.DEV.RFR.Daily$DATE, 5, 8), "-", substr(HML.DEV.RFR.Daily$DATE, 1, 2), "-", substr(HML.DEV.RFR.Daily$DATE, 3, 4)))
      
      # Convert the data.frame to xts object, using the Date column as the index
      HML.DEV.RFR.Daily <- xts::xts(HML.DEV.RFR.Daily[, -1], order.by = HML.DEV.RFR.Daily$DATE)
      
      # Check the structure of the xts object
      str(HML.DEV.RFR.Daily)
      
      # SAVE RFR
      save(HML.DEV.RFR.Daily, file = paste0("data/HML.DEV.RFR.Daily.RData"), compress = "xz", compression_level = 9)


## Add script to merge factor data by country below ##

