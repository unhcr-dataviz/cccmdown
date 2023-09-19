#' Function for CCCM paged template
#'
#' @param coord_mec Coordination mecanism for the logo
#' Select from "cluster", "sector" and "wg"
#' @param country Country name
#' @param other_css Add extra css
#' @param number_sections Number section headings
#' @param ... Arguments passed to pagedown::html_paged
#'
#' @return A pagedown report
#' @export
paged_report <- function(
    coord_mec = "cluster",
    country = NULL,
    other_css = NULL,
    number_sections = FALSE,
    ...) {
    # TODO: add logic for coord_mec
    # TODO: add css variable for country

    # css file
    paged_report_css <- pkg_resource("css/paged_report.css")

    # template
    pagedown::html_paged(
        css = c(paged_report_css, other_css),
        number_sections = number_sections,
        ...
    )
}
