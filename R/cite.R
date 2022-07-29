#' @export
#' @importFrom htmltools HTML h3 strong
#' @importFrom shiny renderUI
citationUI<- function(citations, title="References") {
  cites <- vector(mode="list", length=length(citations))
  for (i in 1:length(citations)) {
    use <- ""
    if (!is.null(attr(citations[[i]], "use"))) {
      use <- strong(attr(citations[[i]], "use"))
    }
    item <- HTML(paste(use, format(citations[[i]], style="html")))
    cites[[i]] <- item
  }

  return(
    renderUI(
      list(
        h3(title),
        cites
      )
    )
  )
}

#' @export
#' @importFrom htmltools HTML
#' @importFrom shiny renderUI
citationTabUI<- function(citations) {
  cites <- vector(mode="list", length=length(citations))
  for (i in 1:length(citations)) {
    item <- HTML(format(citations[[i]], style="html"))
    cites[[i]] <- item
  }

  return(
    renderUI(
      list(
        cites
      )
    )
  )
}
