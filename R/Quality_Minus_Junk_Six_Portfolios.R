#' Quality Minus Junk: Six Portfolios Formed on Size and Quality, Monthly
#'
#'This data set is related to “Quality Minus Junk” (Asness, Frazzini and Pedersen, 
#'2014). Quality stocks — those of companies that are profitable, growing and well 
#'managed — command higher prices on average than those of unprofitable, stagnant 
#'or poorly managed companies, which we refer to as “junk.” While that is to be 
#'expected, the “quality margin” is puzzlingly modest, although high-quality stocks 
#'have consistently delivered high risk-adjusted returns. Indeed, a 
#'quality-minus-junk (QMJ) strategy, in which an investor goes long high-quality 
#'stocks and shorts low-quality stocks, has earned significant historical 
#'risk-adjusted returns in the U.S. and 23 other countries.
#'
#'This data set is an updated and extended version of the paper data. We provide 
#'six size- and quality-sorted long-only portfolios for a U.S. long sample 
#'(starting 1956) and a global broad sample (starting 1986), and update them 
#'monthly. We define quality based on various measures of profitability, growth, 
#'safety and payout and use the resulting quality scores to construct six 
#'value-weighted portfolios formed on size and quality.
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains monthly returns, in excess of t-bills, of 
#' six value-weighted long-only portoflios sorted on size and quality (2 x 3). 
#' The resulting long/short Quality Minus Junk (QMJ) factor is also shown. 
#' Copyright ©2014 Cliff Asness, Andrea Frazzini and Lasse Heje Pedersen
#' 
#' @docType data
#'
#' @usage data('QMJ.Portfolios.Six')
#'
#' @format A xts object with 802 observations on 14 variables:
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{LS.S.Lo:} Returns, numerical. Returns of Low quality 
#'  portfolios for long sample of Small U.S. equities 
#'  Abbreviated from original name of "Long Sample - US ~ Small ~ Low"
#'  \item \strong{LS.S.Med:} Returns, numerical. Returns of Medium quality 
#'  portfolios for long sample of Small U.S. equities 
#'  Abbreviated from original name of "Long Sample - US ~ Small ~ Medium"
#'  \item \strong{LS.S.Lar:} Returns, numerical. Returns of Large quality 
#'  portfolios for long sample of Small U.S. equities 
#'  Abbreviated from original name of "Long Sample - US ~ Small ~ Large"
#'  \item \strong{LS.B.Lo:} Returns, numerical. Returns of Low quality 
#'  portfolios for long sample of Big U.S. equities 
#'  Abbreviated from original name of "Long Sample - US ~ Big ~ Low"
#'  \item \strong{LS.B.Med:} Returns, numerical. Returns of Medium quality 
#'  portfolios for long sample of Big U.S. equities 
#'  Abbreviated from original name of "Long Sample - US ~ Big ~ Medium"
#'  \item \strong{LS.B.Lar:} Returns, numerical. Returns of Large quality 
#'  portfolios for long sample of Big U.S. equities 
#'  Abbreviated from original name of "Long Sample - US ~ Big ~ Large"
#'  \item \strong{LS.QMJ.F:} Returns, numerical. QMJ Factors for long sample of 
#'  U.S. equities 
#'  Abbreviated from original name of "Long Sample - US ~ QMJ ~ Factor"
#'  \item \strong{BS.S.Lo:} Returns, numerical. Returns of Low quality 
#'  portfolios for a broad sample of Small global equities
#'  Abbreviated from original name of "Broad Sample Global - US ~ Small ~ Low"
#'  \item \strong{BS.S.Med:} Returns, numerical. Returns of Medium quality 
#'  portfolios for a broad sample of Small global equities
#'  Abbreviated from original name of "Broad Sample Global - US ~ Small ~ Medium"
#'  \item \strong{BS.S.Lar:} Returns, numerical. Returns of Large quality 
#'  portfolios for a broad sample of Small global equities
#'  Abbreviated from original name of "Broad Sample Global - US ~ Small ~ Large"
#'  \item \strong{BS.B.Lo:} Returns, numerical. Returns of Low quality 
#'  portfolios for a broad sample of Big global equities
#'  Abbreviated from original name of "Broad Sample Global - US ~ Big ~ Low"
#'  \item \strong{BS.B.Med:} Returns, numerical. Returns of Medium quality 
#'  portfolios for a broad sample of Big global equities 
#'  Abbreviated from original name of "Broad Sample Global - US ~ Big ~ Medium"
#'  \item \strong{BS.B.Lar:} Returns, numerical. Returns of Large quality 
#'  portfolios for a broad sample of Big global equities
#'  Abbreviated from original name of "Broad Sample Global - US ~ Big ~ Large"
#'  \item \strong{BS.QMJ.F:} Returns, numerical. QMJ Factors for a broad sample 
#'  of global equities 
#'  Abbreviated from original name of "Broad Sample Global - US ~ QMJ ~ Factor"
#' }
#' @source 
#'
#' 
#' **Past performance of the Information is not an indication of future results.**
#' 
#' \url{https://www.aqr.com/Insights/Datasets/Quality-Minus-Junk-Six-Portfolios-Formed-on-Size-and-Quality-Monthly}
#' @examples  str(QMJ.Portfolios.Six)
"QMJ.Portfolios.Six"


