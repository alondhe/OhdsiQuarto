#' Get Cohort Definition Section
#' 
#' @description
#' Obtains a report section describing the cohorts selected: 
#' - The print friendly definitions
#' - The counts
#' 
#' @export
getCohortDefinitionSection <- function() {
  
  cohorts <- ROhdsiWebApi::getCohortResults(cohortId = as.integer(Sys.getenv("COHORT_ID")), 
                                            baseUrl = Sys.getenv("BASE_URL"))
  
  # cohortTable <- cohorts$summary |> dplyr::filter(sourceKey == Sys.getenv("CDM_SOURCE_KEY")) |>
  #   dplyr::select(`Source Name` = sourceName,
  #                 N = finalCount,
  #                 `Count Type` = modeLong)
  # 
  
  cohortCopy <- CirceR::cohortPrintFriendly(expression = result$expression)
  conceptSetCopy <- CirceR::conceptSetListPrintFriendly(conceptSetList = result$expression$ConceptSets)
  
  
  #formattedTable <- DT::datatable(cohortTable, style = "bootstrap")
  #print(htmltools::tagList(formattedTable))
  cat("\n\n")
  
}



