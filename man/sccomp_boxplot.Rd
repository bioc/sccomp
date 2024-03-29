% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{sccomp_boxplot}
\alias{sccomp_boxplot}
\title{sccomp_boxplot}
\usage{
sccomp_boxplot(.data, factor, significance_threshold = 0.025)
}
\arguments{
\item{.data}{A tibble including a cell_group name column | sample name column | read counts column | factor columns | Pvalue column | a significance column}

\item{factor}{A character string for a factor of interest included in the model}

\item{significance_threshold}{A real. FDR threshold for labelling significant cell-groups.}
}
\value{
A \code{ggplot}
}
\description{
This function plots a boxplot of the results of the model.
}
\examples{

data("counts_obj")

estimate =
  sccomp_estimate(
  counts_obj ,
   ~ type, ~1, sample, cell_group, count,
    cores = 1
  ) |>
  sccomp_test()

# estimate |> sccomp_boxplot()
}
