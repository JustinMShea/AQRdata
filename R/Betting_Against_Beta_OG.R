#' Betting Against Beta: Original Paper Data
#'
#'This data set is related to “Betting Against Beta” (Frazzini and Pedersen, 2014). 
#'A basic premise of the capital asset pricing model (CAPM) is that all agents 
#'invest in the portfolio with the highest Sharpe ratio, or expected excess return 
#'per unit of risk, and leverage or de-leverage this portfolio to suit their risk 
#'preferences. However, many investors — such as individuals, pension funds and 
#'mutual funds — are constrained in the leverage that they can take, and therefore 
#'overweight risky securities instead. This behavior of tilting toward beta 
#'suggests high-beta assets require lower risk-adjusted returns than low-beta 
#'assets. Indeed, the security market line for U.S. stocks is too flat relative 
#'to the CAPM and is better explained by the CAPM with limited borrowing. This 
#'raises several questions: What is the magnitude of this anomaly relative to the 
#'size, value and momentum effects? Is betting against beta rewarded in other 
#'countries and asset classes? How does the return premium vary over time and 
#'in the cross section? How does one bet against beta? To explore these questions, 
#'we construct market-neutral betting-against-beta (BAB) factors, which are long 
#'leveraged low-beta assets and short high-beta assets.
#'
#'This is the original data set used by Frazzini and Pedersen (2014), with 
#'long/short BAB factors through March 2012. BAB factors are constructed for: 
#'U.S. equities and 19 international equity markets (as well as an aggregate of 
#'international equities); U.S. Treasuries; U.S. credit indices (unhedged and 
#'hedged); U.S. corporate bonds; equity indices (aggregate of 13 global equity 
#'index futures); country bonds (aggregate of 9 global bond futures); foreign 
#'exchange (aggregate of 9 global exchange rate forwards); commodities (aggregate 
#'of 24 commodity futures).
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains daily self-financing excess returns of 
#' long/short equity Betting Against Beta (BAB) factors. 	
#' Copyright ©2014 Andrea Frazzini and Lasse Heje Pedersen
#' 
#' @docType data
#'
#' @usage data('BAB.Factors.OG')
#'
#' @format A xts object with 1035 observations on 30 variables:
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{EQ.USA:} Returns, numerical. USA equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "USA Equities"
#'  \item \strong{EQ.Int:} Returns, numerical. International equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "International Equities"
#'  \item \strong{EQ.AUS:} Returns, numerical. AUS equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "AUS Equities"
#'  \item \strong{EQ.AUT:} Returns, numerical. AUT equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "AUT Equities"
#'  \item \strong{EQ.BEL:} Returns, numerical. BEL equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "BEL Equities"
#'  \item \strong{EQ.CAN:} Returns, numerical. CAN equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "CAN Equities"
#'  \item \strong{EQ.CHE:} Returns, numerical. CHE equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "CHE Equities"
#'  \item \strong{EQ.DEU:} Returns, numerical. DEU equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "DEU Equities"
#'  \item \strong{EQ.DNK:} Returns, numerical. DNK equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "DNK Equities"
#'  \item \strong{EQ.ESP:} Returns, numerical. ESP equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "ESP Equities"
#'  \item \strong{EQ.FIN:} Returns, numerical. FIN equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "FIN Equities"
#'  \item \strong{EQ.FRA:} Returns, numerical. FRA equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "FRA Equities"
#'  \item \strong{EQ.GBR:} Returns, numerical. GBR equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "GBR Equities"
#'  \item \strong{EQ.HKG:} Returns, numerical. HKG equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "HKG Equities"  
#'  \item \strong{EQ.ITA:} Returns, numerical. ITA equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "ITA Equities"  
#'  \item \strong{EQ.JPN:} Returns, numerical. JPN equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "JPN Equities"  
#'  \item \strong{EQ.NLD:} Returns, numerical. NLD equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "NLD Equities"  
#'  \item \strong{EQ.NOR:} Returns, numerical. NOR equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "NOR Equities"  
#'  \item \strong{EQ.NZL:} Returns, numerical. NZL equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "NZL Equities" 
#'  \item \strong{EQ.SGP:} Returns, numerical. SGP equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "SGP Equities" 
#'  \item \strong{EQ.SWE:} Returns, numerical. SWE equity porfolio that is 
#'  long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "SWE Equities" 
#'  \item \strong{US.TB:} Returns, numerical. U.S. Treasury Bonds porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "U.S. Treasury Bonds"
#'  \item \strong{US.CI:} Returns, numerical. U.S. Credit Indices porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "U.S. Credit Indices"
#'  \item \strong{US.CIH:} Returns, numerical. U.S. Credit Indices (hedged) porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "U.S. Credit Indices (hedged)"
#'  \item \strong{US.CB:} Returns, numerical. U.S. Corporate Bonds porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "U.S. Corporate Bonds"
#'  \item \strong{EI:} Returns, numerical. Equity Indices porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Equity Indices"
#'  \item \strong{CB:} Returns, numerical. Country Bonds  porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Country Bonds"
#'  \item \strong{FX:} Returns, numerical. Foreign Exchange porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Foreign Exchange"
#'  \item \strong{CM:} Returns, numerical. Commodities porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "Commodities"
#'  \item \strong{AA:} Returns, numerical. All Assets porfolio 
#'  that is long low-beta securities and short-sells high-beta securities. 
#'  Abbreviated from original name of "All Assets"
#' }
#' @source 
#'
#' Disclosures
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
#' basis of any investment decision. Nothing contained herein constitutes 
#' investment, legal, tax or other advice, nor is it to be relied on in making an 
#' investment or other decision.
#' 
#' There can be no assurance that an investment strategy will be successful. 
#' Historic market trends are not reliable indicators of actual future market 
#' behavior or future performance of any particular investment which may differ 
#' materially, and should not be relied upon as such. This Information should 
#' not be viewed as a current or past recommendation or a solicitation of an offer 
#' to buy or sell any securities or to adopt any investment strategy.
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
#' \url{https://www.aqr.com/Insights/Datasets/Betting-Against-Beta-Original-Paper-Data}
#' @examples  str(BAB.Factors)
"BAB.Factors.OG"


