#' An NBA Function
#'
#' This function allows you to get the correlation matrix of the numeric variables in the nba dataset in a specific year.
#' @param year An individual year of an NBA game 
#' @keywords nba
#' @export
#' @examples
#' cor_mat()


cor_mat <- function(year){
  nba_year <- dplyr::filter(nba, Year == year)
  nba_year <- purrr::keep(nba_year, is.numeric)
  cor(nba_year)
}
