#' Betting Against Beta: Equity Factors, Daily
#'
#'This data set is related to “Betting Against Beta” (Frazzini and Pedersen, 2014). 
#'A basic premise of the capital asset pricing model (CAPM) is that all agents 
#'invest in the portfolio with the highest Sharpe ratio, or expected excess return 
#'per unit of risk, and leverage or de-leverage this portfolio to suit their risk 
#'preferences. However, many investors — such as individuals, pension funds and 
#'mutual funds — are constrained in the leverage that they can take, and therefore 
#'overweight riskier securities instead. This behavior of tilting toward beta 
#'suggests high-beta assets require lower risk-adjusted returns than low-beta 
#'assets. Indeed, the security market line for U.S. stocks is too flat relative 
#'to the CAPM and is better explained by the CAPM with limited borrowing. This 
#'raises several questions: What is the magnitude of this anomaly relative to the 
#'size, value and momentum effects? Is betting against beta rewarded in other 
#'countries and asset classes? How does the return premium vary over time and in 
#'the cross section? How does one bet against beta? To explore these questions, 
#'we construct market-neutral betting-against-beta (BAB) factors, which are long 
#'leveraged low-beta assets and short high-beta assets.
#'
#'This data set is an updated and extended version of the paper data, for which 
#'we provide daily long/short BAB equity factors. BAB equity factors are for U.S. 
#'equities and 23 international equity markets (as well as multiple international 
#'and global aggregates). Daily data is updated and extended monthly. We also 
#'provide the returns for several additional global factors for reference.
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains daily self-financing excess returns of 
#' long/short equity Betting Against Beta (BAB) factors. 	
#' Copyright ©2014 Andrea Frazzini and Lasse Heje Pedersen
#' 
#' @docType data
#'
#' @usage data('BAB.Factors.Daily')
#'
#' @format A xts object with 24781 observations on 29 variables:
#' \itemize{
#'  \item \strong{Date:} Date, daily periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{EQ.AUS:} Returns, numerical. AUS equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ AUS"
#'  \item \strong{EQ.AUT:} Returns, numerical. AUT equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ AUT"
#'  \item \strong{EQ.BEL:} Returns, numerical. BEL equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ BEL"
#'  \item \strong{EQ.CAN:} Returns, numerical. CAN equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ CAN"
#'  \item \strong{EQ.CHE:} Returns, numerical. CHE equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ CHE"
#'  \item \strong{EQ.DEU:} Returns, numerical. DEU equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ DEU"
#'  \item \strong{EQ.DNK:} Returns, numerical. DNK equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ DNK"
#'  \item \strong{EQ.ESP:} Returns, numerical. ESP equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ ESP"
#'  \item \strong{EQ.FIN:} Returns, numerical. FIN equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ FIN"
#'  \item \strong{EQ.FRA:} Returns, numerical. FRA equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ FRA"
#'  \item \strong{EQ.GBR:} Returns, numerical. GBR equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ GBR"
#'  \item \strong{EQ.GRC:} Returns, numerical. GRC equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ GRC"
#'  \item \strong{EQ.HKG:} Returns, numerical. HKG equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ HKG"  
#'  \item \strong{EQ.IRL:} Returns, numerical. IRL equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ IRL"  
#'  \item \strong{EQ.ISR:} Returns, numerical. ISR equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ ISR"  
#'  \item \strong{EQ.ITA:} Returns, numerical. ITA equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ ITA"  
#'  \item \strong{EQ.JPN:} Returns, numerical. JPN equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ JPN"  
#'  \item \strong{EQ.NLD:} Returns, numerical. NLD equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ NLD"  
#'  \item \strong{EQ.NOR:} Returns, numerical. NOR equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ NOR"  
#'  \item \strong{EQ.NZL:} Returns, numerical. NZL equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ NZL" 
#'  \item \strong{EQ.PRT:} Returns, numerical. PRT equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ PRT" 
#'  \item \strong{EQ.SGP:} Returns, numerical. SGP equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ SGP" 
#'  \item \strong{EQ.SWE:} Returns, numerical. SWE equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ SWE" 
#'  \item \strong{EQ.USA:} Returns, numerical. USA equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equities ~ USA"
#'  \item \strong{AEP.GL:} Returns, numerical. Aggregate global equity porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Global"
#'  \item \strong{AEP.GLUS:} Returns, numerical. Aggregate global equity porfolio 
#'  except USA that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Global Ex USA"
#'  \item \strong{AEP.EU:} Returns, numerical. Aggregate Europe equity porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Europe"
#'  \item \strong{AEP.NA:} Returns, numerical. Aggregate North America equity porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ North America"
#'  \item \strong{AEP.PA:} Returns, numerical. Aggregate Pacific equity porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Aggregate Equity Portfolios ~ Pacific"
#' }
#' @source 
#'
#' 
#' **Past performance of the Information is not an indication of future results.**
#' 
#' \url{https://www.aqr.com/Insights/Datasets/Betting-Against-Beta-Equity-Factors-Daily}
#' @examples  str(BAB.Factors)
"BAB.Factors.Daily"


