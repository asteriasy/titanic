#' Calcul du taux de survie en fonction de la variable donnée en entrée
#'
#' @author Lina
#' @param data jeu de données
#' @param variable colonne donnée
#'
#' @examples
#' survival_rate(carData::TitanicSurvival, "passengerClass")
#' survival_rate(carData::TitanicSurvival, "sex")
#'
#' @export
survival_rate <- function(data, variable) {
  data |>
    dplyr::group_by(.data[[variable]]) |>
    dplyr::summarize(TauxSurvie = sum(survived == "yes") / dplyr::n())
}




