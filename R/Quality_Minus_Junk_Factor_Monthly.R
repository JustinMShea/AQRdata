#' Quality Minus Junk: Factors, Daily
#'
#'This data set is related to “Quality Minus Junk” (Asness, Frazzini and Pedersen, 
#'2014). Quality stocks — those of companies that are profitable, growing and well
#' managed — command higher prices on average than those of unprofitable, stagnant 
#' or poorly managed companies, which we refer to as “junk.” While that is to be 
#' expected, the “quality margin” is puzzlingly modest, although high-quality 
#' stocks have consistently delivered high risk-adjusted returns. Indeed, a 
#' quality-minus-junk (QMJ) strategy, in which an investor goes long high-quality 
#' stocks and shorts low-quality stocks, has earned significant historical 
#' risk-adjusted returns in the U.S. and 23 other countries.
#' 
#' This data set is an updated and extended version of the paper data. We provide 
#' long/short QMJ factors for the U.S. and 23 international equity markets updated 
#' monthly. We define quality based on various measures of profitability, growth, 
#' safety and payout and use the resulting quality scores to construct QMJ factors 
#' at the intersection of six value-weighted portfolios formed on size and quality. 
#' We also provide the returns for several additional global factors for reference.
#' Data loads lazily.
#'
#' @section Notes: This file contains dialy self-financing excess returns of 
#' long/short Quality Minus Junk (QMJ) factors.
#' Copyright ©2014 Cliff Asness, Andrea Frazzini and Lasse Heje Pedersen
#' 
#' @docType data
#'
#' @usage data('QMJ.Factors.Daily')
#'
#' @format A xts object with 802 observations on 29 variables:
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{EQ.AUS:} Returns, numerical. AUS equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ AUS"
#'  \item \strong{EQ.AUT:} Returns, numerical. AUT equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ AUT"
#'  \item \strong{EQ.BEL:} Returns, numerical. BEL equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ BEL"
#'  \item \strong{EQ.CAN:} Returns, numerical. CAN equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ CAN"
#'  \item \strong{EQ.CHE:} Returns, numerical. CHE equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ CHE"
#'  \item \strong{EQ.DEU:} Returns, numerical. DEU equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ DEU"
#'  \item \strong{EQ.DNK:} Returns, numerical. DNK equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ DNK"
#'  \item \strong{EQ.ESP:} Returns, numerical. ESP equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ ESP"
#'  \item \strong{EQ.FIN:} Returns, numerical. FIN equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ FIN"
#'  \item \strong{EQ.FRA:} Returns, numerical. FRA equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ FRA"
#'  \item \strong{EQ.GBR:} Returns, numerical. GBR equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ GBR"
#'  \item \strong{EQ.GRC:} Returns, numerical. GRC equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ GRC"
#'  \item \strong{EQ.HKG:} Returns, numerical. HKG equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ HKG"  
#'  \item \strong{EQ.IRL:} Returns, numerical. IRL equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ IRL"  
#'  \item \strong{EQ.ISR:} Returns, numerical. ISR equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ ISR"  
#'  \item \strong{EQ.ITA:} Returns, numerical. ITA equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ ITA"  
#'  \item \strong{EQ.JPN:} Returns, numerical. JPN equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ JPN"  
#'  \item \strong{EQ.NLD:} Returns, numerical. NLD equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ NLD"  
#'  \item \strong{EQ.NOR:} Returns, numerical. NOR equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ NOR"  
#'  \item \strong{EQ.NZL:} Returns, numerical. NZL equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ NZL" 
#'  \item \strong{EQ.PRT:} Returns, numerical. PRT equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ PRT" 
#'  \item \strong{EQ.SGP:} Returns, numerical. SGP equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ SGP" 
#'  \item \strong{EQ.SWE:} Returns, numerical. SWE equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ SWE" 
#'  \item \strong{EQ.USA:} Returns, numerical. USA equity porfolio that is 
#'  long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Equities ~ USA"
#'  \item \strong{AEP.GL:} Returns, numerical. Aggregate global equity porfolio 
#'  that is long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Global"
#'  \item \strong{AEP.GL.US:} Returns, numerical. Aggregate global equity porfolio 
#'  except USA that is long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Global Ex USA"
#'  \item \strong{AEP.EU:} Returns, numerical. Aggregate Europe equity porfolio 
#'  that is long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Europe"
#'  \item \strong{AEP.NA:} Returns, numerical. Aggregate North America equity porfolio 
#'  that is long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ North America"
#'  \item \strong{AEP.PA:} Returns, numerical. Aggregate Pacific equity porfolio 
#'  that is long high quality stocks and short low quality stocks. 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Pacific"
#' }
#' @source 
#'
#' 
#' **Past performance of the Information is not an indication of future results.**
#' 
#' \url{https://www.aqr.com/Insights/Datasets/Quality-Minus-Junk-Factors-Monthly}
#' @examples  str(QMJ.Factors.Monthly)
"QMJ.Factors.Monthly"


