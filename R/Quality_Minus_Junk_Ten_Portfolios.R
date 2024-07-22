#' Quality Minus Junk: 10 Quality-Sorted Portfolios, Monthly
#'
#'This data set is related to “Quality Minus Junk” (Asness, Frazzini and Pedersen, 
#'2014). Quality stocks — those of companies that are profitable, growing and well 
#'managed — command higher prices on average than those of unprofitable, stagnant 
#'or poorly managed companies, which we refer to as “junk.” While that is to be 
#'expected, the “quality margin” is puzzlingly modest, although high-quality 
#'stocks have consistently delivered high risk-adjusted returns. Indeed, a 
#'quality-minus-junk (QMJ) strategy, in which an investor goes long high-quality 
#'stocks and shorts low-quality stocks, has earned significant historical 
#'risk-adjusted returns in the U.S. and 23 other countries.
#'
#'This data set is an updated and extended version of the paper data. We provide 
#'10 quality-sorted long-only portfolios for a U.S. long sample (starting 1956) 
#'and a global broad sample (starting 1986), and update them monthly. We define 
#'quality based on various measures of profitability, growth, safety and payout 
#'and use the resulting quality scores to construct the QMJ portfolios.
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains monthly returns, in excess of t-bills, of 
#' 10 value-weighted, long-only portoflios sorted on quality. 
#' Copyright ©2014 Cliff Asness, Andrea Frazzini and Lasse Heje Pedersen
#' 
#' @docType data
#'
#' @usage data('QMJ.Portfolios.Ten')
#'
#' @format A xts object with 802 observations on 22 variables:
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{LS.P1:} Returns, numerical. Returns of 1/10 quality 
#'  portfolios for long sample of U.S. equities 
#'  Abbreviated from original name of "Long Sample - US ~ P1 (low quality)"
#'  \item \strong{LS.P2:} Returns, numerical. Returns of 2/10 quality 
#'  portfolios for long sample of U.S. equities  
#'  Abbreviated from original name of "Long Sample - US ~ P2"
#'  \item \strong{LS.P3:} Returns, numerical. Returns of 3/10 quality 
#'  portfolios for long sample of U.S. equities  
#'  Abbreviated from original name of "Long Sample - US ~ P3"
#'  \item \strong{LS.P4:} Returns, numerical. Returns of 4/10 quality 
#'  portfolios for long sample of U.S. equities  
#'  Abbreviated from original name of "Long Sample - US ~ P4"
#'  \item \strong{LS.P5:} Returns, numerical. Returns of 5/10 quality 
#'  portfolios for long sample of U.S. equities 
#'  Abbreviated from original name of "Long Sample - US ~ P5"
#'  \item \strong{LS.P6:} Returns, numerical. Returns of 6/10 quality 
#'  portfolios for long sample of U.S. equities  
#'  Abbreviated from original name of "Long Sample - US ~ P6"
#'  \item \strong{LS.P7:} Returns, numerical. Returns of 7/10 quality 
#'  portfolios for long sample of U.S. equities  
#'  Abbreviated from original name of "Long Sample - US ~ P7"
#'  \item \strong{LS.P8:} Returns, numerical. Returns of 8/10 quality 
#'  portfolios for long sample of U.S. equities  
#'  Abbreviated from original name of "Long Sample - US ~ P8"
#'  \item \strong{LS.P9:} Returns, numerical. Returns of 9/10 quality 
#'  portfolios for long sample of U.S. equities  
#'  Abbreviated from original name of "Long Sample - US ~ P9"
#'  \item \strong{LS.P10:} Returns, numerical. Returns of 10/10 quality 
#'  portfolios for long sample of U.S. equities  
#'  Abbreviated from original name of "Long Sample - US ~ P10 (high quality)"
#'  \item \strong{LS.P10.1:} Returns, numerical. Returns of 10/10 - 1/10 quality 
#'  portfolios for long sample of U.S. equities  
#'  Abbreviated from original name of "Long Sample - US ~ P10-P1"
#'  \item \strong{BS.P1:} Returns, numerical. Returns of 1/10 quality 
#'  portfolios for a broad sample of global equities 
#'  Abbreviated from original name of "Broad Sample - Global ~ P1 (low quality)"
#'  \item \strong{BS.P2:} Returns, numerical. Returns of 2/10 quality 
#'  portfolios for a broad sample of global equities  
#'  Abbreviated from original name of "Broad Sample - Global ~ P2"
#'  \item \strong{BS.P3:} Returns, numerical. Returns of 3/10 quality 
#'  portfolios for a broad sample of global equities  
#'  Abbreviated from original name of "Broad Sample - Global ~ P3"
#'  \item \strong{BS.P4:} Returns, numerical. Returns of 4/10 quality 
#'  portfolios for a broad sample of global equities  
#'  Abbreviated from original name of "Broad Sample - Global ~ P4"
#'  \item \strong{BS.P5:} Returns, numerical. Returns of 5/10 quality 
#'  portfolios for a broad sample of global equities 
#'  Abbreviated from original name of "Broad Sample - Global ~ P5"
#'  \item \strong{BS.P6:} Returns, numerical. Returns of 6/10 quality 
#'  portfolios for a broad sample of global equities  
#'  Abbreviated from original name of "Broad Sample - Global ~ P6"
#'  \item \strong{BS.P7:} Returns, numerical. Returns of 7/10 quality 
#'  portfolios for a broad sample of global equities  
#'  Abbreviated from original name of "Broad Sample - Global ~ P7"
#'  \item \strong{BS.P8:} Returns, numerical. Returns of 8/10 quality 
#'  portfolios for a broad sample of global equities  
#'  Abbreviated from original name of "Broad Sample - Global ~ P8"
#'  \item \strong{BS.P9:} Returns, numerical. Returns of 9/10 quality 
#'  portfolios for a broad sample of global equities  
#'  Abbreviated from original name of "Broad Sample - Global ~ P9"
#'  \item \strong{BS.P10:} Returns, numerical. Returns of 10/10 quality 
#'  portfolios for a broad sample of global equities  
#'  Abbreviated from original name of "Broad Sample - Global ~ P10 (high quality)"
#'  \item \strong{BS.P10.1:} Returns, numerical. Returns of 10/10 - 1/10 quality 
#'  portfolios for a broad sample of global equities  
#'  Abbreviated from original name of "Broad Sample - Global ~ P10-P1"
#' }
#' @source 
#'
#' 
#' **Past performance of the Information is not an indication of future results.**
#' 
#' \url{https://www.aqr.com/Insights/Datasets/Quality-Minus-Junk-10-QualitySorted-Portfolios-Monthly}
#' @examples  str(QMJ.Portfolios.Ten)
"QMJ.Portfolios.Ten"


