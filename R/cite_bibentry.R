#' Generate a citation from a bibentry
#'
#' Generate a citation for use with schite using a bibentry object.
#' @param bibentry A bibentry object
#' @param use Optional usage to add to the citation (e.g. 'Visualisation', 'Data Processing')
#' @export
cite_bibentry <- function(bibentry, use=NULL) {
  attr(bibentry, "use") <- use
  return(bibentry)
}
