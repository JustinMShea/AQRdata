#' Responsible Investing: The ESG-Efficient Frontier – Original Paper Data (VW.ESG)
#'
#' This file contains the Low Accruals (ESG) value-weighted portfolios.
#'
#' This is the original data set used in “Responsible Investing: The 
#' ESG-Efficient Frontier” (Pedersen, Fitzgibbons and Pomorski). The paper 
#' proposes a theory in which each stock’s environmental, social, and governance 
#' (ESG) score plays two roles: 1) providing information about firm fundamentals 
#' and 2) affecting investor preferences. The solution to the investor’s portfolio 
#' problem is characterized by an ESG-efficient frontier, showing the highest 
#' attainable Sharpe ratio for each ESG level. The corresponding portfolios s
#' atisfy four-fund separation. Equilibrium asset prices are determined by an 
#' ESG-adjusted capital asset pricing model, showing when ESG increases or lowers 
#' the required return. Combining several large data sets, the paper computes the 
#' empirical ESG-efficient frontier and shows the costs and benefits of responsible 
#' investing. Finally, it tests its theory’s predictions using commercial ESG 
#' measures, governance, sin stocks, and carbon emissions.
#' 
#' This dataset contains the total returns of value-weighted and equal-weighted 
#' portfolios used in the paper. 
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
#' @usage data('ESG.VW.ESG')
#'
#' @format An xts object on 1972-01-31 / 2024-04-30 containing: Data: 628 entries, 22 total columns
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{ESG1:} Returns, Total returns of portfolios sorted by ESG
#'  Abbreviated from original name of "ESG (Overall MSCI ESG Score) ~ ESG1 (low ESG)" 
#'  \item \strong{ESG2:} Returns, Total returns of portfolios sorted by ESG
#'  Abbreviated from original name of "ESG (Overall MSCI ESG Score) ~ ESG2"
#'  \item \strong{ESG3:} Returns, Total returns of portfolios sorted by ESG
#'  Abbreviated from original name of "ESG (Overall MSCI ESG Score) ~ ESG3"
#'  \item \strong{ESG4:} Returns, Total returns of portfolios sorted by ESG
#'  Abbreviated from original name of "ESG (Overall MSCI ESG Score) ~ ESG4"
#'  \item \strong{ESG5:} Returns, Total returns of portfolios sorted by E
#'  Abbreviated from original name of "ESG (Overall MSCI ESG Score) ~ ESG5 (high ESG)"
#'  \item \strong{ESG5.1:} Returns, Total returns of portfolios sorted by ESG
#'  Abbreviated from original name of "ESG (Overall MSCI ESG Score) ~ ESG5.1"
#' }
#' @source
#'
#' Disclosures
#' 
#' The Information has been provided to you solely for information purposes and 
#' does not constitute an offer or solicitation of an offer, or any advice or 
#' recommendation, to purchase any securities or other financial instruments, 
#' and may not be construed as such. All Information provided herein is 
#' impersonal and not tailored to the needs of any person, entity or group of 
#' persons. This Information is subject to further review and revision. AQR is 
#' not responsible for any errors or omissions, regardless of the cause, for the 
#' results obtained from the use of the Information.
#' 
#' The Information contained herein is only as current as of the date indicated, 
#' and may be superseded by subsequent market events or for other reasons. 
#' Charts and graphs provided herein are for illustrative purposes only. The 
#' Information has been developed internally and/or obtained from sources 
#' believed to be reliable; however, AQR does not make any representation or 
#' warranty, express or implied, as to the Information’s accuracy, adequacy or 
#' completeness of such Information, nor does AQR recommend that the attached 
#' Information serve as the basis of any investment decision. Nothing contained 
#' herein constitutes investment, legal, tax or other advice, nor is it to be 
#' relied on in making an investment or other decision.
#' 
#' There can be no assurance that an investment strategy will be successful. 
#' Historic market trends are not reliable indicators of actual future market 
#' behavior or future performance of any particular investment which may differ 
#' materially, and should not be relied upon as such. This Information should 
#' not be viewed as a current or past recommendation or a solicitation of an 
#' offer to buy or sell any securities or to adopt any investment strategy.
#' 
#' Performance of all cited indices is calculated on a total-return basis with 
#' dividends reinvested.
#' 
#' The investment strategy and themes discussed herein may be unsuitable for 
#' investors depending on their specific investment objectives and financial 
#' situation. Please note that changes in the rate of exchange of a currency 
#' may affect the value, price or income of an investment adversely.
#' 
#' **Past performance of the Information is not an indication of future results.**
#'
#' \url{https://www.aqr.com/Insights/Datasets/Value-and-Momentum-Everywhere-Factors-Monthly}
#' @examples  str(ESG.VW.ESG)
"ESG.VW.ESG"
