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
#' We construct Value and Momentum Everywhere (VME) portfolios as long-only 
#' tertiles for both value and momentum for eight markets/asset classes, resulting 
#' in 48 total portfolios. The eight markets and asset classes covered are: 
#' individual stocks in the U.S., the U.K., continental Europe and Japan; equity 
#' index futures; government bonds; currencies; and commodity futures. This data 
#' set is an updated and extended version of the paper data, with VME factor 
#' returns starting in January 1972 and updated monthly.
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
#' @usage data('VME.Factors.orig')
#'
#' @format An xts object on Jan 1972 / Jul 2011 containing: Data: 475 entries, 22 total columns
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %m/%d/%Y format.
#'  \item \strong{VAL1US:} Excess returns of Value US equities in the lowest group. 
#'  \item \strong{VAL2US:} Excess returns of Value US equities in the medium group. 
#'  \item \strong{VAL3US:} Excess returns of Value US equities in the large group. 
#'  
#'  \item \strong{MOMFactorSS:} Rank-weighted momentum factor, MOM, ALL EQUITIES, SS
#'  original name of "VAL^AA"
#'  \item \strong{VALFactorAA:} Excess returns of a ranked-weighted value factor, VAL, ALL OTHER, AA
#'  original name of "MOM^AA"
#'  \item \strong{MOMFactorAA} Rank-weighted momentum factor, MOM, ALL OTHER, AA
#'  original name of "VAL^US"
#'  \item \strong{VALFactorUS:} Excess returns of a ranked-weighted value factor, VAL, US EQUITIES, US
#'  original name of "MOM^US"
#'  \item \strong{MOMFactorUS:} Rank-weighted momentum factor, MOM, US EQUITIES, US
#'  original name of "VAL^UK"
#'  \item \strong{VALFactorUK:} Excess returns of a ranked-weighted value factor, VAL, UK EQUITIES, UK
#'  original name of "MOM^UK"
#'  \item \strong{MOMFactorUK:} Rank-weighted momentum factor, MOM, UK EQUITIES, UK
#'  original name of "VAL^EU"
#'  \item \strong{VALFactorEU:} Excess returns of a ranked-weighted value factor, VAL, EUROPE EQUITIES, EU
#'  original name of "MOM^EU"
#'  \item \strong{MOMFactorEU:} Rank-weighted momentum factor, MOM, EUROPE EQUITIES, EU
#'  original name of "VAL^JP"
#'  \item \strong{VALFactorJP:} Excess returns of a ranked-weighted value factor, VAL, JAPAN EQUITIES, JP
#'  original name of "MOM^JP"
#'  \item \strong{MOMFactorJP:} Rank-weighted momentum factor, MOM, JAPAN EQUITIES, JP
#'  original name of "VAL^EQ"
#'  \item \strong{VALFactorEQ:} Excess returns of a ranked-weighted value factor, VAL, EQUITY INDICES, EQ
#'  original name of "MOM^EQ"
#'  \item \strong{MOMFactorEQ:} Rank-weighted momentum factor, MOM, EQUITY EQUITIES, EQ
#'  original name of "VAL^FX"
#'  \item \strong{VALFactorFX:} Excess returns of a ranked-weighted value factor, VAL, CURRENCIES, FX
#'  original name of "MOM^FX"
#'  \item \strong{MOMFactorFX:} Rank-weighted momentum factor, MOM, CURRENCIES, FX
#'  original name of "VAL^FI"
#'  \item \strong{VALFactorFI:} Excess returns of a ranked-weighted value factor, VAL, FIXED INCOME, FI
#'  original name of "MOM^FI"
#'  \item \strong{MOMFactorFI:} Rank-weighted momentum factor, MOM, FIXED INCOME, FI
#'  original name of "VAL^CM"
#'  \item \strong{VALFactorCM:} Excess returns of a ranked-weighted value factor, VAL, COMMODITIES, CM
#'  original name of "MOM^CM"
#'  \item \strong{MOMFactorCM:} Rank-weighted momentum factor, MOM, COMMODITIES, CM
#' }
#' @source
#'
#' The information has been provided to you solely for information purposes and
#' does not constitute an offer or solicitation of an offer, or any advice or recommendation,
#' to purchase any securities or other financial instruments, and may not be construed
#' as such. All information provided herein is impersonal and not tailored to
#' the needs of any person, entity, or group of persons. This information is
#' subject to further review and revision. AQR is not responsible for any errors
#' or omissions, regardless of the cause, for the results obtained from the use
#' of the information.
#'
#' The information contained herein is only as current as of the date indicated,
#' and may be superseded by subsequent market events or for other reasons. Charts
#' and graphs provided herein are for illustrative purposes only. The information
#' has been developed internally and/or obtained from sources believed to be reliable;
#' however, AQR does not make any representation or warranty, express or implied,
#' as to the information’s accuracy, adequacy or completeness of such information,
#' nor does AQR recommend that the attached information serve as the basis of any
#' investment decision. Nothing contained herein constitutes investment, legal, tax
#' or other advice, nor is it to be relied on in making an investment or other decision.
#'
#' There can be no assurance that an investment strategy will be successful.
#' Historic market trends are not reliable indicators of actual future market behavior
#' or future performance of any particular investment, which may differ materially,
#' and should not be relied upon as such. This information should not be viewed as
#' a current or past recommendation or a solicitation of an offer to buy or sell
#' any securities or to adopt any investment strategy.
#'
#' Performance of all cited indices is calculated on a total-return basis with dividends reinvested.
#'
#' The investment strategy and themes discussed herein may be unsuitable for
#' investors depending on their specific investment objectives and financial
#' situation. Please note that changes in the rate of exchange of a currency may
#' affect the value, price, or income of an investment adversely.
#'
#' **Past performance of the Information is not an indication of future results.**
#'
#' \url{https://www.aqr.com/Insights/Datasets/Value-and-Momentum-Everywhere-Original-Paper-Data}
#' @examples  str(VME.Factors.orig)
"VME.Factors.orig"
