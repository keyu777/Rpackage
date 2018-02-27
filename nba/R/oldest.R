#' An NBA Function
#'
#' This function allows you to get the oldest player in a specific year.
#' @param year An individual year of an NBA game 
#' @keywords nba
#' @export
#' @examples
#' oldest()


oldest <- function(year){
  nba_year <- dplyr::filter(nba, Year == year)
  as.character(nba_year$Player[which.max(nba_year$Age)])
}