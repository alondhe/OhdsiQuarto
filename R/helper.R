#' Get Header
#' 
#' @export
getHeader <- function() {
  dummy <- data.frame()
  htmltools::tagList(datatable(dummy))
  htmltools::tagList(plotly::plot_ly(dummy))
}

evaluateInputs <- function() {
  singleInputs <- c(
    "documentTitle",
    "documentAuthor",
    "tocTitle",
    "baseUrl",
    "authMethod",
    "webApiUsername",
    "webApiPassword",
    "overviewPage",
    "overviewCohortSection",
    "overviewCharacterizationSection"
  )
  
  arrayInputs <- c(
    "characterizationIds",
    "generationIds",
    "cohortDefinitionIds",
    
  )
}