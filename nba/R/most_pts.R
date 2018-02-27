#' An NBA Function
#'
#' This function allows you to get who scored the most points in a specific year.
#' @param year An individual year of an NBA game 
#' @keywords nba
#' @export
#' @examples
#' most_pts()


most_pts <- function(year){
  nba_year <- dplyr::filter(nba, Year == year)
  as.character(nba_year$Player[which.max(nba_year$PTS)])
}

