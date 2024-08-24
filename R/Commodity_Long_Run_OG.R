#'  Commodities for the Long Run: Original Paper Data
#'
#'This data set is related to “Commodities for the Long Run” (Levine, Ooi,
#'Richardson, and Sasseville, 2018). Using this novel data set consisting of
#'daily futures prices going back to 1877, we find that returns of commodity
#'futures indices have, on average, been positive over the long run. Although
#'return premiums are associated with both carry and spot returns, commodity
#'returns in different economic states (inflation up/down, expansion/recession)
#'vary mostly as a result of moves in the underlying spot price. These economic
#'states are important drivers of commodity returns, even after conditioning on
#'whether commodity markets are in backwardation or contango. The evidence
#'supports commodities as a potentially attractive asset class in portfolios of
#'stocks and bonds.
#'
#'This data set is an updated version of the data set used in the paper. We
#'provide monthly index level data and update the data monthly. We constructed
#'two portfolios of commodity futures: (1) an equal-weighted portfolio and (2) a
#'long–short portfolio based on the backwardation/contango of individual
#'commodities. Excess returns as well as the breakdown between the excess spot
#'return and interest rate–adjusted carry are shown for these two portfolios.
#'The breakdown between spot return and carry is also included for the
#'equal-weighted portfolio. The data set also includes values and states of
#'aggregate backwardation/contango and states of inflation.
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains the updated index level data used in
#' “Commodities for the Long Run" (Levine, Ooi, Richardson, and Sasseville, FAJ,
#' 2018)
#' Paper: 	https://www.cfapubs.org/doi/abs/10.2469/faj.v74.n2.4
#' Copyright ©2018 Ari Levine, Yao Hua Ooi, Matthew P. Richardson, and Caroline
#' Sasseville
#'
#' @docType data
#'
#' @usage data('Commodities.Long.Run.OG') 
#'
#' @format A data.frame with 1667 observations on 11 variables:
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{XRET.EW:} Returns, numerical. Abbreviated from
#'  original name of "Excess return of equal-weight commodities portfolio"
#'  \item \strong{SXRET.EW:} Returns, numerical. Abbreviated from
#'  original name of "Excess spot return of equal-weight commodities portfolio"
#'  \item \strong{CARRY.ADJ.EW:} Return, numerical. Abbreviated from
#'  original name of "Interest rate adjusted carry of equal-weight commodities portfolio"
#'  \item \strong{SRET.EW:} Return, numerical. Abbreviated from
#'  original name of "Spot return of equal-weight commodities portfolio"
#'  \item \strong{CARRY.EW:} Return, numerical. Abbreviated from
#'  original name of "Carry of equal-weight commodities portfolio"
#'  \item \strong{XRET.LS:} Return, numerical. Abbreviated from
#'  original name of "Excess return of long/short commodities portfolio"
#'  \item \strong{SXRET.LS:} Return, numerical. Abbreviated from
#'  original name of "Excess spot return of long/short commodities portfolio"
#'  \item \strong{CARRY.ADJ.LS:} Return, numerical. Abbreviated from
#'  original name of "Interest rate adjusted carry of long/short commodities portfolio"
#'  \item \strong{PFC.AGG:} Return, numerical. Abbreviated from
#'  original name of "Aggregate backwardation/contango"
#'  \item \strong{PFC.STATE:} Factor w/ 2 levels "Contango", "Backwardation".
#'  Abbreviated from original name of "State of backwardation/contango"
#'  \item \strong{INFL.STATE:} Factor w/ 2 levels "Inflation Down", "Inflation Up".
#'   Abbreviated from original name of "State of inflation"
#' }
#' @source
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
#' and may be superseded by subsequent market events or for other reasons.
#' Charts and graphs provided herein are for illustrative purposes only. The
#' Information has been developed internally and/or obtained from sources believed
#' to be reliable; however, AQR does not make any representation or warranty,
#' express or implied, as to the Information’s accuracy, adequacy or completeness
#' of such Information, nor does AQR recommend that the attached Information serve
#' as the basis of any investment decision. Nothing contained herein constitutes
#' investment, legal, tax or other advice, nor is it to be relied on in making an
#' investment or other decision.
#'
#' There can be no assurance that an investment strategy will be successful.
#' Historic market trends are not reliable indicators of actual future market
#' behavior or future performance of any particular investment which may differ
#' materially, and should not be relied upon as such. This Information should not
#' be viewed as a current or past recommendation or a solicitation of an offer to
#' buy or sell any securities or to adopt any investment strategy.
#'
#' The investment strategy and themes discussed herein may be unsuitable for
#' investors depending on their specific investment objectives and financial s
#' ituation. Please note that changes in the rate of exchange of a currency may
#' affect the value, price or income of an investment adversely
#'
#' **Past performance of the Information is not an indication of future results.**
#'
#' \url{https://images.aqr.com/-/media/AQR/Documents/Insights/Data-Sets/Commodities-for-the-Long-Run-Original-Paper-Data.xlsx}
#' @examples  str(Commodities.Long.Run.OG)
"Commodities.Long.Run.OG"



