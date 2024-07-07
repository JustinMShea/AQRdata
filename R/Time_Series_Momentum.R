#' Time Series Momentum: Factors, Monthly
#'
#' This data set is related to “Time Series Momentum” (Moskowitz, Ooi and Pedersen, 2012),
#' in which we document an asset pricing anomaly we term “time series momentum,”
#' which we find to be consistent across different asset classes and markets.
#' Specifically, we find strong positive predictability from a security’s own
#' past returns for a set of 58 diverse futures and forward contracts that include
#' country equity indices, currencies, commodities and sovereign bonds over more
#' than 25 years of data. We find that the past 12-month excess return of each
#' instrument is a positive predictor of its future return. This time series
#' momentum or “trend” effect persists for about a year and then partially reverses
#' over longer horizons. These findings are robust across a number of sub-samples,
#' look-back periods and holding periods. We find that 12-month time series momentum
#' profits are positive not just on average across these assets, but for every
#' asset contract we examine.
#'
#' This is the original data set used by Moskowitz, Ooi and Pedersen (2012),
#' with monthly long/short Time Series Momentum (TSMOM) factors from January 1985
#' through December 2009. Factors are based on a 12-month time series momentum
#' strategy with a 1-month holding period for equity indices, currencies, commodities
#' and developed government bond futures based on 58 underlying liquid instruments.
#'
#' The TSMOM factor here is a 12-month time series momentum strategy with a 1-month holding period.
#'
#' Data loads lazily.
#'
#' @section Notes: This file contains the excess returns of the long/short Time Series Momentum (TSMOM) factors.
#' The portfolios are an updated and extended version of the factors used in
#' Moskowitz, Tobias J., Yao Hua Ooi and  Lasse H. Pedersen, 2012, “Time Series Momentum,"
#' Journal of Financial Economics, 104(2), 228-250.
#' Paper: 	https://www.aqr.com/Insights/Datasets/Time-Series-Momentum-Original-Paper-Data?aqrPDF=1
#' Copyright ©2012 Tobias Moskowitz, Yao Hua Ooi, and Lasse Heje Pedersen
#'
#' @docType data
#'
#' @usage data('TSM')
#'
#' @format An xts object on Jan 1985 / Jun 2024 containing: Data: 472 obs. of  6 variables
#' \itemize{
#'  \item \strong{Date:} Date, monthly periodicity. Formatted in as a Date object in %Y-%m-%d format.
#'  \item \strong{TSMOM:} num, excess returns of the time series momentum factors for all assets
#'  original name of "TSMOM^CM"
#'  \item \strong{TSMOM.CM:} num, excess returns of the time series momentum factors for commoodities, CM
#'  original name of "TSMOM^EQ"
#'  \item \strong{TSMOM.EQ:} num, excess returns of the time series momentum factors for equity indices, EQ
#'  original name of "TSMOM^FI"
#'  \item \strong{TSMOM.FI:} num, excess returns of the time series momentum factors for Fixed Income, FI
#'  original name of "TSMOM^FX"
#'  \item \strong{TSMOM.FX:} num, excess returns of the time series momentum factors for currencies, FX
#' }
#' @source
#'
#' \strong{Data Sources}
#'
#' The underlying data may differ from Moskowitz, Ooi and Pedersen (2012),
#' but the message of the paper is preserved. Except where noted, data is updated
#' and refreshed monthly in order to utilize the best available data.
#' The data sources themselves may differ in order to allow for continued updating.
#' In addition, the underlying data may be improved and expanded as it becomes available.
#' Correlations with the original paper data are quite high.
#'
#' Country Equity Indices
#' Universe consists of equity index futures from nine developed equity markets:
#' SPI 200 (Australia), CAC 40 (France), DAX (Germany), FTSE/MIB (Italy), TOPIX (Japan), AEX (Netherlands), IBEX 35 (Spain), FTSE 100 (U.K.), S&P 500 (U.S.)
#' Futures prices are obtained from Bloomberg and Datastream
#' MSCI country level index returns are used prior to the availability of futures returns\
#'
#' Country Bond Indices
#' Universe consists of bond index futures from 13 developed markets:
#' Australia 3-year Bond, Australia 10-year Bond, Euro Schatz, Euro Bobl, Euro Bund, Euro Buxl, Canada 10-year Bond, Japan 10-year Bond (TSE), Long Gilt, U.S. 2-year Note, U.S. 5-year Note, U.S. 10-year Note, U.S. Long Bond
#' Futures prices are obtained from Bloomberg, Datastream and Morgan Markets
#' JP Morgan country level bond index returns are used prior to the availability of futures returns
#' Daily returns are scaled to a constant duration of 2 years for 2 and 3-year bond futures, 4 years for 5-year bond futures, 7 years for 10-year bond futures and 20 years for 30-year bond futures
#'
#' Foreign Exchange
#' Contains 12 cross-currency pairs
#' AUD-NZD; AUD-USD; EUR-JPY; EUR-NOK; EUR-SEK; EUR-CHF; EUR-GBP; JPY-AUD; GBP-USD; USD-EUR; USD-CAD; USD-JPY
#' Universe of currency forwards covers 10 exchange rates:
#' Australia, Canada, Germany spliced with the Euro, Japan, New Zealand, Norway, Sweden, Switzerland, U.K., U.S.
#' We look at forwards for the first nine currencies vs. USD; these nine underlie the 12 cross-currency pairs
#' Spot and forward interest rates from Citigroup are used to calculate currency returns going back to 1989 for all currencies except CAD and NZD, which go back to 1992 and 1996, respectively
#' Prior to that, spot exchange rates from Datastream and IBOR short rates from Bloomberg are used to calculate returns
#'
#' Commodities
#' Universe covers 24 commodity futures
#' Aluminum, Copper, Nickel, Zinc
#' From London Metal Exchange (LME)
#' Brent Crude, Gas Oil, Cotton, Coffee, Cocoa, Sugar
#' From Intercontinental Exchange (ICE)
#' Live Cattle, Lean Hogs
#' From Chicago Mercantile Exchange (CME)
#' Corn, Soybeans, Soy Meal, Soy Oil, Wheat
#' From Chicago Board of Trade (CBOT)
#' WTI Crude, RBOB Gasoline spiked with Unleaded Gasoline, Heating Oil, Natural Gas
#' From New York Mercantile Exchange (NYMEX)
#' Gold, Silver
#' From New York Commodities Exchange (COMEX)
#' Platinum
#' From Tokyo Commodity Exchange (TOCOM)
#' Futures prices are obtained from Bloomberg
#'
#' \strong{Disclosures}
#'
#' The Information has been provided to you solely for information purposes and
#' does not constitute an offer or solicitation of an offer, or any advice or
#' recommendation, to purchase any securities or other financial instruments,
#' and may not be construed as such. All Information provided herein is impersonal
#' and not tailored to the needs of any person, entity or group of persons.
#' This Information is subject to further review and revision. AQR is not
#' responsible for any errors or omissions, regardless of the cause, for the
#' results obtained from the use of the Information.
#'
#' The Information contained herein is only as current as of the date indicated,
#' and may be superseded by subsequent market events or for other reasons.
#' Charts and graphs provided herein are for illustrative purposes only.
#' The Information has been developed internally and/or obtained from sources
#' believed to be reliable; however, AQR does not make any representation or
#' warranty, express or implied, as to the Information’s accuracy, adequacy or
#' completeness of such Information, nor does AQR recommend that the attached
#' Information serve as the basis of any investment decision. Nothing contained
#' herein constitutes investment, legal, tax or other advice, nor is it to be
#' relied on in making an investment or other decision.
#'
#' There can be no assurance that an investment strategy will be successful.
#' Historic market trends are not reliable indicators of actual future market behavior
#' or future performance of any particular investment which may differ materially,
#' and should not be relied upon as such. This Information should not be viewed as
#' a current or past recommendation or a solicitation of an offer to buy or sell
#' any securities or to adopt any investment strategy.
#'
#' Performance of all cited indices is calculated on a total-return basis with
#' dividends reinvested.
#'
#' The investment strategy and themes discussed herein may be unsuitable for
#' investors depending on their specific investment objectives and financial situation.
#' Please note that changes in the rate of exchange of a currency may affect the value,
#' price or income of an investment adversely.
#'
#' **Past performance of the Information is not an indication of future results.**
#'
#' \url{https://www.aqr.com/Insights/Datasets/Time-Series-Momentum-Original-Paper-Data}
#' @examples  str(TSM)
"Time Series Momentum"
