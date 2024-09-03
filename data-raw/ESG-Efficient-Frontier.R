# Betting Against Beta: Equity Factors Data, Monthly
#
# Last Updated by AQR: October 29, 2020
#
# Period: E     ~ 2009-06-30 - 2019-03-31 
#         S     ~ 1963-02-28 - 2019-03-31  
#         G     ~ 1963-02-28 - 2019-03-31 
#         ESG   ~ 2007-02-28 - 2019-03-31 
#
#
# Source: https://www.aqr.com/Insights/Datasets/Betting-Against-Beta-Equity-Factors-Monthly

# Download in R environment
ESG.Efficient.Frontier.url <- "https://www.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/ESG_efficient_frontier_portfolios_vF.xlsx?sc_lang=en"

###
###   1. E (Low CO2) 
      ESG.VW.E <- openxlsx::read.xlsx(ESG.Efficient.Frontier.url, sheet=1, startRow=13,  cols = 2:8, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(ESG.VW.E)
      
      # New column names
      new_colnames <- c("DATE", "E1", "E2", "E3", "E4", "E5", "E5.1") 
      
      # Assigning the new column names to the data frame
      colnames(ESG.VW.E) <- new_colnames
      
      # Convert the data.frame to xts object, using the Date column as the index
      ESG.VW.E <- xts::xts(ESG.VW.E[, -1], order.by = ESG.VW.E$DATE)
      
      # Check the structure of the xts object
      str(ESG.VW.E)
      
      # Save E
      save(ESG.VW.E, file = paste0("data/ESG.VW.E.RData"), compress = "xz", compression_level = 9)
 
### 
###   2. S (Non-Sin Stocks)
      ESG.VW.S <- openxlsx::read.xlsx(ESG.Efficient.Frontier.url, sheet=1, startRow=13,  cols = 10:13, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(ESG.VW.S)
      
      # New column names
      new_colnames <- c("DATE", "S1", "S2", "S2.1") 
      
      # Assigning the new column names to the data frame
      colnames(ESG.VW.S) <- new_colnames
      
      # Convert the data.frame to xts object, using the Date column as the index
      ESG.VW.S <- xts::xts(ESG.VW.S[, -1], order.by = ESG.VW.S$DATE)
      
      # Check the structure of the xts object
      str(ESG.VW.S)
      
      # Save S
      save(ESG.VW.S, file = paste0("data/ESG.VW.S.RData"), compress = "xz", compression_level = 9)

###
###   3. G (Low Accruals)
      ESG.VW.G <- openxlsx::read.xlsx(ESG.Efficient.Frontier.url, sheet=1, startRow=13,  cols = 15:21, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(ESG.VW.G)
      
      # New column names
      new_colnames <- c("DATE", "G1", "G2", "G3", "G4", "G5", "G5.1") 
      
      # Assigning the new column names to the data frame
      colnames(ESG.VW.G) <- new_colnames
      
      # Convert the data.frame to xts object, using the Date column as the index
      ESG.VW.G <- xts::xts(ESG.VW.G[, -1], order.by = ESG.VW.G$DATE)
      
      # Check the structure of the xts object
      str(ESG.VW.G)
      
      # Save G
      save(ESG.VW.G, file = paste0("data/ESG.VW.G.RData"), compress = "xz", compression_level = 9)
      
      ###
      ###   4. ESG (Low Accruals)
      ESG.VW.ESG <- openxlsx::read.xlsx(ESG.Efficient.Frontier.url, sheet=1, startRow=13,  cols = 23:29, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(ESG.VW.ESG)
      
      # New column names
      new_colnames <- c("DATE", "ESG1", "ESG2", "ESG3", "ESG4", "ESG5", "ESG5.1") 
      
      # Assigning the new column names to the data frame
      colnames(ESG.VW.ESG) <- new_colnames
      
      # Convert the data.frame to xts object, using the Date column as the index
      ESG.VW.ESG <- xts::xts(ESG.VW.ESG[, -1], order.by = ESG.VW.ESG$DATE)
      
      # Check the structure of the xts object
      str(ESG.VW.ESG)
      
      # Save ESG
      save(ESG.VW.ESG, file = paste0("data/ESG.VW.ESG.RData"), compress = "xz", compression_level = 9)

##### 
##### Equal-Weighted excess returns 
      
      ###
      ###   1. E (Low CO2) 
      ESG.EW.E <- openxlsx::read.xlsx(ESG.Efficient.Frontier.url, sheet=2, startRow=10,  cols = 2:8, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(ESG.EW.E)
      
      # New column names
      new_colnames <- c("DATE", "E1", "E2", "E3", "E4", "E5", "E5.1") 
      
      # Assigning the new column names to the data frame
      colnames(ESG.EW.E) <- new_colnames
      
      # Convert the data.frame to xts object, using the Date column as the index
      ESG.EW.E <- xts::xts(ESG.EW.E[, -1], order.by = ESG.EW.E$DATE)
      
      # Check the structure of the xts object
      str(ESG.EW.E)
      
      # Save E
      save(ESG.EW.E, file = paste0("data/ESG.EW.E.RData"), compress = "xz", compression_level = 9)
      
      ### 
      ###   2. S (Non-Sin Stocks)
      ESG.EW.S <- openxlsx::read.xlsx(ESG.Efficient.Frontier.url, sheet=2, startRow=10,  cols = 10:13, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(ESG.EW.S)
      
      # New column names
      new_colnames <- c("DATE", "S1", "S2", "S2.1") 
      
      # Assigning the new column names to the data frame
      colnames(ESG.EW.S) <- new_colnames
      
      # Convert the data.frame to xts object, using the Date column as the index
      ESG.EW.S <- xts::xts(ESG.EW.S[, -1], order.by = ESG.EW.S$DATE)
      
      # Check the structure of the xts object
      str(ESG.EW.S)
      
      # Save S
      save(ESG.EW.S, file = paste0("data/ESG.EW.S.RData"), compress = "xz", compression_level = 9)
      
      ###
      ###   3. G (Low Accruals)
      ESG.EW.G <- openxlsx::read.xlsx(ESG.Efficient.Frontier.url, sheet=2, startRow=10,  cols = 15:21, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(ESG.EW.G)
      
      # New column names
      new_colnames <- c("DATE", "G1", "G2", "G3", "G4", "G5", "G5.1") 
      
      # Assigning the new column names to the data frame
      colnames(ESG.EW.G) <- new_colnames
      
      # Convert the data.frame to xts object, using the Date column as the index
      ESG.EW.G <- xts::xts(ESG.EW.G[, -1], order.by = ESG.EW.G$DATE)
      
      # Check the structure of the xts object
      str(ESG.EW.G)
      
      # Save G
      save(ESG.EW.G, file = paste0("data/ESG.EW.G.RData"), compress = "xz", compression_level = 9)
      
      ###
      ###   4. ESG (Low Accruals)
      ESG.EW.ESG <- openxlsx::read.xlsx(ESG.Efficient.Frontier.url, sheet=2, startRow=10,  cols = 23:29, colNames=TRUE, detectDates = TRUE)
      
      ## Clean up
      variable.names <- colnames(ESG.EW.ESG)
      
      # New column names
      new_colnames <- c("DATE", "ESG1", "ESG2", "ESG3", "ESG4", "ESG5", "ESG5.1") 
      
      # Assigning the new column names to the data frame
      colnames(ESG.EW.ESG) <- new_colnames
      
      # Convert the data.frame to xts object, using the Date column as the index
      ESG.EW.ESG <- xts::xts(ESG.EW.ESG[, -1], order.by = ESG.EW.ESG$DATE)
      
      # Check the structure of the xts object
      str(ESG.EW.ESG)
      
      # Save ESG
      save(ESG.EW.ESG, file = paste0("data/ESG.EW.ESG.RData"), compress = "xz", compression_level = 9)
