% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_ewi.R
\name{fit_ewi}
\alias{fit_ewi}
\title{Fit Bayesian EWI model}
\usage{
fit_ewi(data_frame, ewi_model = "ar", iter = 2000, chains = 4,
  control = list(adapt_delta = 0.9, max_treedepth = 20))
}
\arguments{
\item{data_frame}{Data frame containing the time covariarte ('x') and response ('y') with no NAs}

\item{ewi_model}{Which model to fit. Either the dynamic AR(1) model ('ar') or stochastic volatility model ('sv'). Defaults to 'ar'. For both cases, a gaussian process model is fit to the time-varying parameters.}

\item{iter}{Number of iterations in Stan sampling.}

\item{chains}{Number of chains in Stan sampling.}

\item{control}{A list of options to pass to Stan sampling.}
}
\description{
Fit Bayesian EWI model
}
\examples{
\dontrun{
library(bayesewi)
model_1 = fit_ewi(data_example, ewi_model="ar")
model_2 = fit_ewi(data_example, ewi_model="ar", iter = 1000, chains=2)

print(plot_estimates(model_2))
options(mc.cores = parallel::detectCores())
model_2 = fit_ewi(data_example, ewi_model="ar", iter = 100, chains=3)
}
}
