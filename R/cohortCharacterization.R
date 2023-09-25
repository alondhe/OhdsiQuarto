
#' Get Characterization Result Set
#' 
#' @export
getCharacterizationResultSet <- function() {
  result <- ROhdsiWebApi::getCharacterizationResults(characterizationId = as.integer(Sys.getenv("CHARACTERIZATION_ID")),
                                                     baseUrl = Sys.getenv("BASE_URL")) |>
    dplyr::filter(generationId == as.integer(Sys.getenv("GENERATION_ID"))) |>
    dplyr::filter(cohortId == as.integer(Sys.getenv("COHORT_ID")))
}

#' Get Characterization Results Section
#' 
#' @export
getCharacterizationSection <- function() {

  
  
  
  return (section)
}

getPrevalenceTables <- function() {

}

# .addNoMatchingConceptRow <- function(covariateName = "No matching concept",
#                                      totalCohortSize) {
#   
#   #df <- thisCC |> dplyr::filter(analysisName == "DemographicsRace") |>
#   #  dplyr::summarise()
#   
# }

