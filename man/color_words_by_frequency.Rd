% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/color_words_by_frequency.R
\name{color_words_by_frequency}
\alias{color_words_by_frequency}
\title{A function to generate LaTeX output from a dataframe containing words and their frequencies.}
\usage{
color_words_by_frequency(word_frequency_dataframe, min_black = 30,
  print_first = 40, supress_reminder = T)
}
\arguments{
\item{word_frequency_dataframe}{A dataframe, preferrably produced by order_by_counts(), or with the same structure.}

\item{min_black}{Defaults to 30 and indicates how light the text for infrequently used words can become.}

\item{print_first}{Defualts to printing the first 40 words. If set to -1, then all words will be printed.}

\item{supress_reminder}{If TRUE then no reminder to use the xcolor pacakge will be provided.}
}
\value{
Concatenates output to the console, no output is returned at present.
}
\description{
A function to generate LaTeX output from a dataframe containing words and their frequencies.
}

