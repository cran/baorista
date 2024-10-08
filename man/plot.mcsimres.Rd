% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotmcsim.R
\name{plot.mcsimres}
\alias{plot.mcsimres}
\title{Plot Monte-Carlo simulation results on aoristic data}
\usage{
\method{plot}{mcsimres}(
  x,
  interval = 0.9,
  changexpr = expression((t1 - t0)/r),
  minortick = NULL,
  ylim = NULL,
  xlab = NULL,
  ylab = NULL,
  calendar = "BP",
  col = "black",
  lwd = 1,
  lty = 1,
  col.fill = "lightblue",
  pch = 20,
  type = "sum",
  plot.legend = TRUE,
  legend.arg = NULL,
  ...
)
}
\arguments{
\item{x}{A \code{mcsimres} class object generated using the \code{mcsim()} function.}

\item{interval}{A value between 0 and 1 defining the percentile interval. Default is 0.9.}

\item{changexpr}{An \code{expression} for calculating the rate of change  between abutting time-blocks. Available input options are \code{t1} (the focal time-block), \code{t0} (the previous time-block), \code{r} (the distance between t0 and t1, i.e. the time-block resolution), and any other standard constants and mathematical operators. Default is \code{expression((t1-t0)/r)}. A possible alternative could be \code{expression(log(t1/t0)/r)}.}

\item{minortick}{Interval for minor ticks in the x-axis label. Default is estimated based on timescale.}

\item{ylim}{Limits of the y-axis. Default estimated from posterior ranges.}

\item{xlab}{Label for the x-axis. Default based on \code{calendar}.}

\item{ylab}{Label for the y-axis. Default is "Probability Mass".}

\item{calendar}{Either \code{'BP'} or \code{'BCAD'}. Indicate whether the x-axis should be displayed in BP or BC/AD. Default is \code{'BP'}.}

\item{col}{Color of Monte-Carlo simulation mean. Default is black.}

\item{lwd}{Line width of Monte-Carlo  mean. Default is 1.}

\item{lty}{Line type Monte-Carlo  mean. Default is 1.}

\item{col.fill}{Fill color for the first (inner) percentile  interval. Default is 'lightblue'.}

\item{pch}{Point symbol used to display mean posteriors. Default is 20.}

\item{type}{Determine whether to display total number of events (if set to 'sum') or the rate of change ('roc'), computed as (t0/t1)^(1/r)-1, where t0 is the number of events in given time-block t, t1 is the number of events of the next time-block t+1, and r is the size (in years) of the time-blocks. Defaults is 'sum'.}

\item{plot.legend}{Logical indicating whether to display a legend or not (default is TRUE).}

\item{legend.arg}{List containing arguments to be directed to the \code{legend()} function.}

\item{...}{Additional arguments affecting the plot.}
}
\value{
No return value (plot function)
}
\description{
Plot Monte-Carlo simulation based percentile  intervals on frequency or rate of change of events.
}
