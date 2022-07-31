#' Cite an R package
#'
#' Generate a citation for use with schite using the CITATION file
#' within an R package.
#' @param pkg The name of the package
#' @param use Optional usage to add to the citation (e.g. 'Visualisation', 'Data Processing')
#' @export
#' @importFrom utils citation
cite_r_package <- function(pkg, use=NULL) {
  cr <- citation(pkg)
  attr(cr, "use") <- use
  return(cr)
}
