#' Time Series Momentum: Original Paper Data
#'
#' This data set is related to “Time Series Momentum” (Moskowitz, Ooi and Pedersen, 
#' 2012), in which we document an asset pricing anomaly we term “time series 
#' momentum,” which we find to be consistent across different asset classes and 
#' markets. Specifically, we find strong positive predictability from a security’s 
#' own past returns for a set of 58 diverse futures and forward contracts that 
#' include country equity indices, currencies, commodities and sovereign bonds 
#' over more than 25 years of data. We find that the past 12-month excess return 
#' of each instrument is a positive predictor of its future return. This time 
#' series momentum or “trend” effect persists for about a year and then partially 
#' reverses over longer horizons. These findings are robust across a number of 
#' sub-samples, look-back periods and holding periods. We find that 12-month time 
#' series momentum profits are positive not just on average across these assets, 
#' but for every asset contract we examine.
#' 
#' This is the original data set used by Moskowitz, Ooi and Pedersen (2012), with 
#' monthly long/short Time Series Momentum (TSMOM) factors from January 1985 
#' through December 2009. Factors are based on a 12-month time series momentum 
#' strategy with a 1-month holding period for equity indices, currencies, 
#' commodities and developed government bond futures based on 58 underlying 
#' liquid instruments.
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains the TSMOM factors used in Moskowitz, Tobias 
#' J., Yao Hua Ooi and  Lasse H. Pedersen, 2012, “Time Series Momentum," Journal 
#' of Financial Economics, 104(2), 228-250.
#' Paper: 	http://people.stern.nyu.edu/lpederse/papers/TimeSeriesMomentum.pdf
#' Copyright ©2012 Tobias Moskowitz, Yao Hua Ooi, and Lasse Heje Pedersen
#'
#' @docType data
#'
#' @usage data('TSM.OG')
#'
#' @format An xts object on Jan 1985 / Jun 2009 containing: Data: 300 obs. of 5 variables
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{TSMOM:} num, excess returns of the time series momentum factors for all assets
#'  original name of "TSMOM"
#'  \item \strong{TSMOM.EQ:} num, excess returns of the time series momentum factors for equity indices, EQ
#'  original name of "TSMOM^EQ"
#'  \item \strong{TSMOM.FX:} num, excess returns of the time series momentum factors for currencies, FX
#'  original name of "TSMOM^FX"
#'  \item \strong{TSMOM.FI:} num, excess returns of the time series momentum factors for Fixed Income, FI
#'  original name of "TSMOM^FI"
#'  \item \strong{TSMOM.CM:} num, excess returns of the time series momentum factors for commoodities, CM
#'  original name of "TSMOM^CM"
#' }
#' @source
#'
#' \strong{Disclosures}
#' 
#' The Information has been provided to you solely for information purposes and 
#' does not constitute an offer or solicitation of an offer, or any advice or 
#' recommendation, to purchase any securities or other financial instruments, 
#' and may not be construed as such. All Information provided herein is impersonal 
#' and not tailored to the needs of any person, entity or group of persons. This 
#' Information is subject to further review and revision. AQR is not responsible 
#' for any errors or omissions, regardless of the cause, for the results obtained 
#' from the use of the Information.
#' 
#' The Information contained herein is only as current as of the date indicated, 
#' and may be superseded by subsequent market events or for other reasons. Charts 
#' and graphs provided herein are for illustrative purposes only. The Information 
#' has been developed internally and/or obtained from sources believed to be 
#' reliable; however, AQR does not make any representation or warranty, express 
#' or implied, as to the Information’s accuracy, adequacy or completeness of such 
#' Information, nor does AQR recommend that the attached Information serve as the 
#' basis of any investment decision. Nothing contained herein constitutes investment, 
#' legal, tax or other advice, nor is it to be relied on in making an investment 
#' or other decision.
#' 
#' There can be no assurance that an investment strategy will be successful. 
#' Historic market trends are not reliable indicators of actual future market 
#' behavior or future performance of any particular investment which may differ 
#' materially, and should not be relied upon as such. This Information should not 
#' be viewed as a current or past recommendation or a solicitation of an offer to 
#' buy or sell any securities or to adopt any investment strategy.
#' 
#' Performance of all cited indices is calculated on a total-return basis with 
#' dividends reinvested.
#' 
#' The investment strategy and themes discussed herein may be unsuitable for 
#' investors depending on their specific investment objectives and financial 
#' situation. Please note that changes in the rate of exchange of a currency may 
#' affect the value, price or income of an investment adversely.
#'
#' **Past performance of the Information is not an indication of future results.**
#'
#' \url{https://www.aqr.com/Insights/Datasets/Time-Series-Momentum-Original-Paper-Data}
#' @examples  str(TSM.OG)
"TSM.OG"

