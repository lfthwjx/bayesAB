#' bayesAB: Fast Bayesian Methods for A/B Testing
#' 
#' bayesAB provides a suite of functions that allow the user to analyze A/B test
#' data in a Bayesian framework. bayesAB is intended to be a drop-in replacement for
#' common frequentist hypothesis test such as the t-test and chi-sq test.
#'
#' Bayesian methods provide several benefits over frequentist methods in the context of
#' A/B tests - namely in interpretability. Instead of p-values you get direct
#' probabilities on whether A is better than B (and by how much). Instead of point estimates
#' your posterior distributions are parametrized random variables which can be summarized
#' any number of ways. Bayesian tests are also immune to 'peeking' and are thus valid whenever 
#' a test is stopped.
#' 
#' The general bayesAB workflow is as follows:
#' \itemize{
#'    \item  Decide how you wanta to parametrize your data (Poisson for counts of email submissions, Bernoulli for CTR on an ad, etc.)
#'    \item  Use our helper functions to decide on priors for your data (\code{?bayesTest})
#'    \item  Fit a \code{bayesTest} object
#'        \itemize{ \item Optional: Use \code{combine} to munge together several \code{bayesTest} objects together for an arbitrary / non-analytical target distribution}
#'    \item  \code{print}, \code{plot}, and \code{summary} to interpret your results}
#' 
#' To learn more about bayesAB, start with the vignettes:
#' \code{browseVignettes(package = "bayesAB")}
#' 
#' @docType package
#' @name bayesAB
#' @importFrom graphics par
#' @importFrom methods is
#' @importFrom stats dbeta dnorm qgamma quantile rbeta rgamma rnorm dgamma dpois qpois runif dlnorm qlnorm
#' @useDynLib bayesAB
#' @importFrom Rcpp evalCpp
NULL
