#' Value and Momentum Everywhere: Factors, Monthly
#'
#' This data set is related to “Value and Momentum Everywhere” (Asness, Moskowitz 
#' and Pedersen, 2012), in which we find consistent value and momentum return 
#' premia across eight diverse markets and asset classes, and a common factor 
#' structure among their returns. Value and momentum returns correlate more 
#' strongly across asset classes than passive exposures to the asset classes, but 
#' value and momentum are negatively correlated with each other, both within and 
#' across asset classes.
#' 
#' We construct Value and Momentum Everywhere (VME) factors as zero-cost 
#' long/short portfolios for both value and momentum in the eight markets/asset 
#' classes. The eight markets and asset classes covered are: individual stocks 
#' in the U.S., the U.K., continental Europe and Japan; equity index futures; 
#' government bonds; currencies; and commodity futures. There are also three 
#' aggregated factors covering stock selection, asset allocation and all assets. 
#' This data set is an updated and extended version of the paper data, with VME 
#' factor returns starting in January 1972 and updated monthly.
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains monthly excess returns of long/short Value 
#' and Momentum factors using the definitions of Asness, Moskowitz and Pedersen (2013).
#' Paper: 	https://pages.stern.nyu.edu/~lpederse/papers/ValMomEverywhere.pdf
#' Copyright ©2013 Cliff Asness, Tobias Moskowitz and Lasse Heje Pedersen
#'
#' @docType data
#'
#' @usage data('VME.Factors')
#'
#' @format An xts object on 1972-01-31 / 2024-04-30 containing: Data: 628 entries, 22 total columns
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{VAL.EVR:} Returns, Global Average of Value Factors everywhere 
#'  Abbreviated from original name of "Global Average ~ EVERYWHERE ~ VAL" 
#'  \item \strong{MOM.EVR:} Returns, Global Average of Momentum Factors everywhere 
#'  Abbreviated from original name of "Global Average ~ EVERYWHERE ~ VAL" 
#'  \item \strong{VAL.SS:} Returns, Global Average of Value Factors for All Equities (SS)
#'  Abbreviated from original name of "Global Average ~ ALL EQUITIES (SS) ~ VAL^SS" 
#'  \item \strong{MOM.SS:} Returns, Global Average of Momentum Factors for All Equities (SS) 
#'  Abbreviated from original name of "Global Average ~ ALL EQUITIES (SS) ~ MOM^SS"
#'  \item \strong{VAL.AA:} Returns, Global Average of Value Factors for All Other (AA)
#'  Abbreviated from original name of "Global Average ~ ALL OTHER (AA) ~ VAL^AA" 
#'  \item \strong{MOM.AA:} Returns, Global Average of Momentum Factors for All Other (AA)
#'  Abbreviated from original name of "Global Average ~ ALL OTHER (AA) ~ MOM^AA" 
#'  \item \strong{VALLS.VME.US90:} Returns, Stock Selection of Value Factors for U.S. Equities (US)
#'  Abbreviated from original name of "Stock Selection ~ U.S. EQUITIES (US) ~ VALLS_VME_US90" 
#'  \item \strong{MOMLS.VME.US90:} Returns, Stock Selection of Momentum Factors for U.S. Equities (US)
#'  Abbreviated from original name of "Stock Selection ~ U.S. EQUITIES (US) ~ MOMLS_VME_US90" 
#'  \item \strong{VALLS.VME.UK90:} Returns, Stock Selection of Value Factors for U.K. Equities (UK)
#'  Abbreviated from original name of "Stock Selection ~ U.K. EQUITIES (UK) ~ VALLS_VME_UK90" 
#'  \item \strong{MOMLS.VME.UK90:} Returns, Stock Selection of Momentum Factors for U.K. Equities (UK)
#'  Abbreviated from original name of "Stock Selection ~ U.K. EQUITIES (UK) ~ MOMLS_VME_UK90" 
#'  \item \strong{VALLS.VME.ROE90:} Returns, Stock Selection of Value Factors for Europe Equities (EU)
#'  Abbreviated from original name of "Stock Selection ~ U.K. EUROPE EQUITIES (EU) ~ VALLS_VME_ROE90" 
#'  \item \strong{MOMLS.VME.ROE90:} Returns, Stock Selection of Momentum Factors for Europe Equities (EU)
#'  Abbreviated from original name of "Stock Selection ~ U.K. EUROPE EQUITIES (EU) ~ MOMLS_VME_ROE90" 
#'  \item \strong{VALLS.VME.JP90:} Returns, Stock Selection of Value Factors for Japan Equities (JP)
#'  Abbreviated from original name of "Stock Selection ~ JAPAN EQUITIES (JP) ~ VALLS_VME_JP90" 
#'  \item \strong{MOMLS.VME.JP90:} Returns, Stock Selection of Momentum Factors for Japan Equities (JP)
#'  Abbreviated from original name of "Stock Selection ~ JAPAN EQUITIES (JP) ~ MOMLS_VME_JP90" 
#'  \item \strong{VALLS.VME.EQ:} Returns, Asset Allocation of Value Factors for Equity Indices (EQ)
#'  Abbreviated from original name of "Asset Allocation ~ EQUITY INDICES (EQ) ~ VALLS_VME_EQ" 
#'  \item \strong{MOMLS.VME.EQ:} Returns, Asset Allocation of Momentum Factors for Equity Indices (EQ)
#'  Abbreviated from original name of "Asset Allocation ~ EQUITY INDICES (EQ) ~ MOMLS_VME_EQ" 
#'  \item \strong{VALLS.VME.FX:} Returns, Asset Allocation of Value Factors for Currencies (FX)
#'  Abbreviated from original name of "Asset Allocation ~ CURRENCIES (FX) ~ VALLS_VME_FX" 
#'  \item \strong{MOMLS.VME.FX:} Returns, Asset Allocation of Momentum Factors for Currencies (FX)
#'  Abbreviated from original name of "Asset Allocation ~ CURRENCIES (FX) ~ MOMLS_VME_FX" 
#'  \item \strong{VALLS.VME.FI:} Returns, Asset Allocation of Value Factors for Fixed Income (FI)
#'  Abbreviated from original name of "Asset Allocation ~ FIXED INCOME (FI) ~ VALLS_VME_FI" 
#'  \item \strong{MOMLS.VME.FI:} Returns, Asset Allocation of Momentum Factors for Fixed Income (FI)
#'  Abbreviated from original name of "Asset Allocation ~ FIXED INCOME (FI) ~ MOMLS_VME_FI" 
#'  \item \strong{VALLS.VME.COM:} Returns, Asset Allocation of Value Factors for Commodities (CM)
#'  Abbreviated from original name of "Asset Allocation ~ COMMODITIES (CM) ~ VALLS_VME_COM" 
#'  \item \strong{MOMLS.VME.COM:} Returns, Asset Allocation of Momentum Factors for Commodities (CM)
#'  Abbreviated from original name of "Asset Allocation ~ COMMODITIES (CM) ~ MOMLS_VME_COM" 
#' }
#' @source
#'
#' 
#' **Past performance of the Information is not an indication of future results.**
#'
#' \url{https://www.aqr.com/Insights/Datasets/Value-and-Momentum-Everywhere-Factors-Monthly}
#' @examples  str(VME.Factors)
"VME.Factors"
