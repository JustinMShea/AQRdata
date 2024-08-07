#' The Devil in HML's Details: Factors, Daily
#'
#' This data set is related to “The Devil in HML’s Details” (Asness and Frazzini, 
#' 2013). This paper challenges the standard method for measuring “value” used in 
#' academic work on factor pricing and behavioral finance. The standard method 
#' calculates book-to-price (B/P) at portfolio formation using lagged book data, 
#' aligns price data using the same lag (ignoring recent price movements), and 
#' holds these values constant until the next rebalance. We propose two simple 
#' alternatives that use more timely price data while retaining the necessary 
#' lag for measuring book. We construct portfolios based on the different measures 
#' for U.S. and International samples. We show that B/P ratios based on more 
#' timely prices better forecast true (unobservable) B/P ratios at fiscal year-end. 
#' Value portfolios based on the most timely measures (HML Devil) earn statistically 
#' significant alphas ranging between 305 and 378 basis point per year against a 
#' 5-factor model itself containing the standard measure of value, as well as 
#' market, size, momentum and a short term reversal factor.
#' 
#' This data set is an updated and extended version of the paper data, with daily 
#' long/short HML Devil returns for the U.S. and 23 international equity markets 
#' updated monthly. We also provide the daily returns for several additional 
#' global factors for reference.
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains monthly self-financing excess returns of 
#' long/short High Minus Low Devil (HML Devil) factors using the Book to Market 
#' definition of Asness and Frazzini (2013).
#' Copyright ©2013 Cliff Asness and Andrea Frazzini
#' 
#' @docType data
#'
#' @usage data('HML.DEV.Daily')
#'
#' @format A xts object with 26,090 observations on 29 variables:
#' \itemize{
#'  \item \strong{Date:} Date, daily periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{EQ.AUS:} Returns, numerical. AUS equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ AUS"
#'  \item \strong{EQ.AUT:} Returns, numerical. AUT equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ AUT"
#'  \item \strong{EQ.BEL:} Returns, numerical. BEL equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ BEL"
#'  \item \strong{EQ.CAN:} Returns, numerical. CAN equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ CAN"
#'  \item \strong{EQ.CHE:} Returns, numerical. CHE equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ CHE"
#'  \item \strong{EQ.DEU:} Returns, numerical. DEU equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ DEU"
#'  \item \strong{EQ.DNK:} Returns, numerical. DNK equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ DNK"
#'  \item \strong{EQ.ESP:} Returns, numerical. ESP equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ ESP"
#'  \item \strong{EQ.FIN:} Returns, numerical. FIN equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ FIN"
#'  \item \strong{EQ.FRA:} Returns, numerical. FRA equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ FRA"
#'  \item \strong{EQ.GBR:} Returns, numerical. GBR equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ GBR"
#'  \item \strong{EQ.GRC:} Returns, numerical. GRC equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ GRC"
#'  \item \strong{EQ.HKG:} Returns, numerical. HKG equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ HKG"  
#'  \item \strong{EQ.IRL:} Returns, numerical. IRL equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ IRL"  
#'  \item \strong{EQ.ISR:} Returns, numerical. ISR equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ ISR"  
#'  \item \strong{EQ.ITA:} Returns, numerical. ITA equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ ITA"  
#'  \item \strong{EQ.JPN:} Returns, numerical. JPN equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ JPN"  
#'  \item \strong{EQ.NLD:} Returns, numerical. NLD equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ NLD"  
#'  \item \strong{EQ.NOR:} Returns, numerical. NOR equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ NOR"  
#'  \item \strong{EQ.NZL:} Returns, numerical. NZL equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ NZL" 
#'  \item \strong{EQ.PRT:} Returns, numerical. PRT equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ PRT" 
#'  \item \strong{EQ.SGP:} Returns, numerical. SGP equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ SGP" 
#'  \item \strong{EQ.SWE:} Returns, numerical. SWE equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ SWE" 
#'  \item \strong{EQ.USA:} Returns, numerical. USA equity porfolio that is 
#'  long high value stocks and short low value stocks, based on book to market values, 
#'  usign the current total market value of equity . 
#'  Abbreviated from original name of "Equities ~ USA"
#'  \item \strong{AEP.GL:} Returns, numerical. Aggregate global equity porfolio 
#'  that is long high value stocks and short low value stocks, based on book to 
#'  market values, usign the current total market value of equity . 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Global"
#'  \item \strong{AEP.GLUS:} Returns, numerical. Aggregate global equity porfolio 
#'  except USA that is long high value stocks and short low value stocks, based on 
#'  book to market values, usign the current total market value of equity . 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Global Ex USA"
#'  \item \strong{AEP.EU:} Returns, numerical. Aggregate Europe equity porfolio 
#'  that is long high value stocks and short low value stocks, based on book to 
#'  market values, usign the current total market value of equity . 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Europe"
#'  \item \strong{AEP.NA:} Returns, numerical. Aggregate North America equity porfolio 
#'  that is long high value stocks and short low value stocks, based on book to
#'   market values, usign the current total market value of equity . 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ North America"
#'  \item \strong{AEP.PA:} Returns, numerical. Aggregate Pacific equity porfolio 
#'  that is long high value stocks and short low value stocks, based on book to 
#'  market values, usign the current total market value of equity . 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Pacific"
#' }
#' @source 
#'
#' 
#' **Past performance of the Information is not an indication of future results.**
#' 
#' \url{https://www.aqr.com/Insights/Datasets/The-Devil-in-HMLs-Details-Factors-Daily}
#' @examples  str(HML.DEV)
"HML.DEV"


