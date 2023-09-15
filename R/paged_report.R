#' Function for CCCM paged template
#'
#' @param other_css Add extra css
#' @param number_sections Number section headings
#' @param ... Arguments passed to pagedown::html_paged
#'
#' @return A pagedown report
#' @export
paged_report <- function(other_css = NULL,
                         number_sections = FALSE,
                         ...) {
    # css file
    paged_report_css <- pkg_resource("css/paged_report.css")

    # template
    pagedown::html_paged(
        css = c(paged_report_css, other_css),
        number_sections = number_sections,
        ...
    )
}
