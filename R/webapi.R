#' Initialize WebAPI
#' 
#' @description
#' Initializes usage of a WebAPI instance
#' 
#' @export
initializeWebApi <- function() {
  if (Sys.getenv("AUTH_METHOD") != "") {
    ROhdsiWebApi::authorizeWebApi(baseUrl = Sys.getenv("BASE_URL"),
                                  authMethod = Sys.getenv("AUTH_METHOD"),
                                  webApiUsername = Sys.getenv("WEBAPI_USERNAME"),
                                  webApiPassword = Sys.getenv("WEBAPI_PASSWORD"))
  }
}
