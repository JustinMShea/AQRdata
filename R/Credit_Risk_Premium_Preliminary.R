#' Credit Risk Premium: Preliminary Paper Data
#'
#' This data set is related to “Credit Risk Premium: Its existence and
#' Implications for Asset Allocation” (Asvanunt and Richardson, 2015) in which
#' we document the existence of a credit risk premium. Using data from both
#' cash bond markets (1927-2014) and synthetic CDS markets (2004-2014),
#' we document evidence of a sizable credit risk premium. This premium is related to,
#' but distinct from, the well-known equity risk premium and term premium.
#' We further document variation in the size of the credit risk premium across
#' different macroeconomic regimes: the credit risk premium is larger during
#' periods of economic growth. Our empirical analyses support a strategic allocation
#' to corporate credit and the possibility of a tactical allocation by exploiting
#' forecasts of expected growth and aggregate default rates.
#'
#' The data provided here are preliminary cash bond market returns used by
#' svanunt and Richardson in a working version of their paper (2015). These are
#' monthly excess returns for U.S. corporate and government bonds, as well as
#' the S&P 500, from January 1926 through December 2014.
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains the credit excess return data used in
#' Asvanunt and Richardson, 2015, “The Credit Risk Premium," working paper.
#' Paper: 	http://papers.ssrn.com/sol3/papers.cfm?abstract_id=2563482
#' Copyright ©2015 Attakrit Asvanunt and Scott Richardson
#'
#' @docType data
#'
#' @usage data('Credit_Risk_Premium_Preliminary')
#'
#' @format An xts object on Jan 1926 / Dec 2014 containing: Data: 1068 entries, 3 total columns
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %m %Y format.
#'  original name of "CORP_XS"
#'  \item \strong{CORP.XS:} Excess returns of corporate bonds
#'  original name of "GOVT_XS"
#'  \item \strong{GOVT.XS:} Excess returns ofgovernment bonds
#'  original name of "SP500_XS"
#'  \item \strong{SP500.XS:} Excess returns of S&P 500
#' }
#' @source
#'
#'The Information has been provided to you solely for information purposes and
#'does not constitute an offer or solicitation of an offer, or any advice or
#'recommendation, to purchase any securities or other financial instruments, and
#'may not be construed as such. All Information provided herein is impersonal and
#'not tailored to the needs of any person, entity or group of persons. This
#'Information is subject to further review and revision. AQR is not responsible
#'for any errors or omissions, regardless of the cause, for the results obtained
#'from the use of the Information.
#'
#'The Information contained herein is only as current as of the date indicated,
#'and may be superseded by subsequent market events or for other reasons. Charts
#'and graphs provided herein are for illustrative purposes only. The Information
#'has been developed internally and/or obtained from sources believed to be
#'reliable; however, AQR does not make any representation or warranty, express or
#'implied, as to the Information’s accuracy, adequacy or completeness of such
#'Information, nor does AQR recommend that the attached Information serve as the
#'basis of any investment decision. Nothing contained herein constitutes investment,
#'legal, tax or other advice, nor is it to be relied on in making an investment or
#'other decision.
#'
#'There can be no assurance that an investment strategy will be successful.
#'Historic market trends are not reliable indicators of actual future market
#'behavior or future performance of any particular investment which may differ
#'materially, and should not be relied upon as such. This Information should not
#'be viewed as a current or past recommendation or a solicitation of an offer to
#'buy or sell any securities or to adopt any investment strategy.
#'
#'Performance of all cited indices is calculated on a total-return basis with dividends reinvested.
#'
#'The investment strategy and themes discussed herein may be unsuitable for investors
#'depending on their specific investment objectives and financial situation.
#'Please note that changes in the rate of exchange of a currency may affect the
#'value, price or income of an investment adversely.
#'
#' **Past performance of the Information is not an indication of future results.**
#'
#' \url{https://www.aqr.com/Insights/Datasets/Credit-Risk-Premium-Preliminary-Paper-Data}
#' @examples  str(Credit_Risk_Premium_Preliminary)
"Credit Risk Premium Preliminary"
