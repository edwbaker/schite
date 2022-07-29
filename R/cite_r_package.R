#' @export
#' @importFrom utils citation
cite_r_package <- function(pkg, use=NULL) {
  cr <- citation(pkg)
  attr(cr, "use") <- use
  return(cr)
}
