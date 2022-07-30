#' @export
#' @importFrom utils citation
cite_bibentry <- function(bibentry, use=NULL) {
  attr(bibentry, "use") <- use
  return(bibentry)
}
