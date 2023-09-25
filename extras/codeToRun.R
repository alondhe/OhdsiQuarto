dotenv::load_dot_env(file = "extras/_environment.local")
quarto::quarto_render(input = "inst/qmd/cohortCharacterization.qmd")