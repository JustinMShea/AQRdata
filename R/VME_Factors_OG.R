#' Value and Momentum Everywhere: Original Paper Data, Long/Short Factors
#'
#'This data set is related to “Value and Momentum Everywhere” (Asness, Moskowitz
#'and Pedersen, 2012), in which we find consistent value and momentum return premia
#'across eight diverse markets and asset classes, and a common factor structure
#'among their returns. Value and momentum returns correlate more strongly across asset classes
#'than passive exposures to the asset classes, but value and momentum are negatively
#'correlated with each other, both within and across asset classes.
#'We construct Value and Momentum Everywhere (VME) factors as zero-cost long/short
#'portfolios for both value and momentum in the eight markets/asset classes.
#'The eight markets and asset classes covered are: individual stocks in the U.S.,
#'the U.K., continental Europe and Japan; equity index futures; government bonds; currencies;
#'and commodity futures. There are also three aggregated factors covering stock selection,
#'asset allocation and all assets. This data set is an updated and extended version of the
#'paper data, with VME factor returns starting in January 1972 and updated monthly.
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains monthly returns of the test assets used in Asness,
#' Clifford S., Tobias J. Moskowitz and  Lasse H. Pedersen, 2013, “Value and Momentum Everywhere,"
#' The Journal of Finance, vol. 68, no. 3, 929-985.
#' Paper: 	https://pages.stern.nyu.edu/~lpederse/papers/ValMomEverywhere.pdf
#' Copyright ©2013 Cliff Asness, Tobias Moskowitz, and Lasse Heje Pedersen
#'
#' @docType data
#'
#' @usage data('VME_Factors_OG')
#'
#' @format An xts object on Jan 1972 / Jul 2011 containing: Data: 475 entries, 22 total columns
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %m/%d/%Y format.
#'  original name of "VAL"
#'  \item \strong{VAL.EVR:} Excess returns of a ranked-weighted value factor, VAL, EVERYWHERE
#'  original name of "MOM"
#'  \item \strong{ExcessSpot.Return.Equal:} Rank-weighted momentum factor, MOM, EVERYWHERE
#'
#'  original name of "VAL^SS"
#'  \item \strong{VALFactorSS:} Excess returns of a ranked-weighted value factor, VAL, ALL EQUITIES, SS
#'
#'
#'  original name of "Interest rate adjusted carry of equal-weight commodities portfolio"
#'  \item \strong{SpotReturn.Equal} Return, numerical. Abbreviated from
#'  original name of "Spot return of equal-weight commodities portfolio"
#'  \item \strong{Carry.Equal:} Return, numerical. Abbreviated from
#'  original name of "Carry of equal-weight commodities portfolio"
#'  \item \strong{ExcessReturn.longshort:} Return, numerical. Abbreviated from
#'  original name of "Excess return of long/short commodities portfolio"
#'  \item \strong{ExcessSpot.Return.longshort:} Return, numerical. Abbreviated from
#'  original name of "Excess spot return of long/short commodities portfolio"
#'  \item \strong{InterestCarry.longshort} Return, numerical. Abbreviated from
#'  original name of "Interest rate adjusted carry of long/short commodities portfolio"
#'  \item \strong{Aggregate.forwardcurve:} Return, numerical. Abbreviated from
#'  original name of "Aggregate backwardation/contango"
#'  \item \strong{State.forwardcurve:} Factor w/ 2 levels "Contango", "Backwardation".
#'  Abbreviated from original name of "State of backwardation/contango"
#'  \item \strong{State.Inflation:} Factor w/ 2 levels "Inflation Down", "Inflation Up".
#'   Abbreviated from original name of "State of inflation"
#' }
#' @source
#'
#' Except where noted, data is updated and refreshed monthly in order to utilize
#' the best available data. The data sources themselves may differ in order to
#' allow for continued updating. In addition, the underlying data may be improved
#' and expanded as it becomes available.
#'
#' In 1865, the Chicago Board of Trade (CBOT) developed the first standardized
#' futures contracts on grain trading. Daily high and low prices for multiple
#' contract expirations on several commodity futures became available starting
#' on 2 January 1877. We manually transcribed data from 1877 to 1951 from the
#' Annual Report of the Trade and Commerce of the CBOT. After 1951 and before
#' 2012, we took the futures prices for various contracts from the data vendor
#' Commodity Systems Inc. After 2012, the futures prices are from Bloomberg. For
#' base metals, we used rolled return series from Standard & Poor’s, Goldman
#' Sachs, and Bloomberg.
#'
#' We constructed the annualized return on each commodity future by using the
#' following procedure for data before 2015. For each month-end, we calculated
#' the return on each contract from the previous month-end. For each month, we
#' held the nearest of the contracts whose delivery month was at least two
#' months away. The returns on the held contracts were spliced together on the
#' roll dates. Using the same rolled contract series, we constructed a rolled
#' price series and calculated the spot returns. For data after 2015, the roll
#' date is the first day of GSCI roll window (i.e. the fifth business day of
#' each month)
#'
#' After 1913, the monthly inflation rate was calculated from the US Consumer
#' Price Index published by the US Bureau of Labor Statistics. Prior to 1913,
#' we used data from Shiller (2000), who used the Warren and Pearson (1935)
#' price index.
#'
#' Discaimer:
#' The Information has been provided to you solely for information purposes and
#' does not constitute an offer or solicitation of an offer, or any advice or
#' recommendation, to purchase any securities or other financial instruments,
#' and may not be construed as such. All Information provided herein is impersonal
#' and not tailored to the needs of any person, entity or group of persons.
#' This Information is subject to further review and revision. AQR is not
#' responsible for any errors or omissions, regardless of the cause, for the
#' results obtained from the use of the Information.The Information contained
#' herein is only as current as of the date indicated, and may be superseded by
#' subsequent market events or for other reasons. Charts and graphs provided
#' herein are for illustrative purposes only. The Information has been developed
#' internally and/or obtained from sources believed to be reliable; however, AQR
#' does not make any representation or warranty, express or implied, as to the
#' Information’s accuracy, adequacy or completeness of such Information, nor
#' does AQR recommend that the attached Information serve as the basis of any
#' investment decision. Nothing contained herein constitutes investment, legal,
#' tax or other advice, nor is it to be relied on in making an investment or
#' other decision. There can be no assurance that an investment strategy will be
#' successful. Historic market trends are not reliable indicators of actual
#' future market behavior or future performance of any particular investment
#' which may differ materially, and should not be relied upon as such. This
#' Information should not be viewed as a current or past recommendation or a
#' solicitation of an offer to buy or sell any securities or to adopt any
#' investment strategy.
#' The investment strategy and themes discussed herein may be unsuitable for
#' investors depending on their specific investment objectives and financial
#' situation. Please note that changes in the rate of exchange of a currency may
#' affect the value, price or income of an investment adversely.
#'
#' **Past performance of the Information is not an indication of future results.**
#'
#' \url{https://www.aqr.com/Insights/Datasets/Commodities-for-the-Long-Run-Index-Level-Data-Monthly}
#' @examples  str(AQR_commodity)
"AQR_commodity"



