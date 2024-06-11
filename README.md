# AQR Capital Management, LLC Data

Collection of data sets from The [AQR Data Library](https://www.aqr.com/Insights/Datasets)


Each data set is associated with a specific paper, cited in the documentation files.

All return series are from hypothetical portfolios from academic articles (or working papers) by researchers associated with AQR. Some series are returns of long-only portfolios in excess of the U.S. one-month Treasury bill rate, while others are differences in returns or return premia of long/short factor portfolios.

The granularity for each simulated return series varies in accordance with the research effort with which it is associated. We link each data set to a specific paper which makes it clear what portfolios and factors are represented by the data in each spreadsheet. In some cases, the simulated returns are more specific (e.g., long/short equity within U.S. stocks) or more coarse (e.g., long/short quality in stocks, globally). Additionally, simulated returns are provided monthly and, in some cases, daily returns are also available.

It is important for users of the AQR data sets to understand that all data sets provided contain the returns to portfolios described in the relevant papers, and not the live returns or backtests of AQR-specific portfolios, funds or products. (We ask users of the data set to please include the following citation: “AQR Capital Management, LLC.”)

For each article in most cases we provide two sets of data series:

  - The original data used in the paper, which will remain static in time to enable other researchers to replicate the results from the original study, where the sample period ends at the time the original sample period ended for that study.

  - For those data sets that are updated monthly beyond the original sample period, the methodology is based on the methodology used in the original paper, with some minor variation at times. Any deviations will be explained in the data sources and definitions portions of the various spreadsheets. In addition, with each data update, the entire historical series is updated and may reflect changes as a result of the various data vendors subsequently fixing data errors. This, for instance, is true of the portfolios on Ken French’s webpage that use CRSP data. 1

AQR aims to update each data set monthly with a lag of about two months. We will try to update periodically, but this R package will contain parsers for you to do so more frequently.

Finally, many of the files also contain additional global factors, such as those of Fama & French, which are constructed similarly to their original studies.
