#' Function for CCCM paged template
#'
#' @param coord_mec Coordination mecanism for the logo
#' Select from "cluster", "sector" and "wg"
#' @param country Country name, e.g. "Nigeria"
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
    # coord_mec logo
    coord_mec_var <- switch(coord_mec,
        "cluster" = pkg_resource("logo/cccm_logo_cluster.svg"),
        "sector" = pkg_resource("logo/cccm_logo_sector.svg"),
        "wg" = pkg_resource("logo/cccm_logo_wg.svg"),
        pkg_resource("logo/cccm_logo_cluster.svg")
    )
    coord_mec_var <- paste0(
        ":root { --cccm-logo: url(",
        knitr::image_uri(coord_mec_var),
        ");}"
    )
    coord_mec_css <- tempfile(fileext = ".css")
    writeLines(coord_mec_var, con = coord_mec_css)

    # country name
    country_var <- paste0("<div class='country'>", country, "</div>")
    country_html <- tempfile(fileext = ".html")
    writeLines(country_var, con = country_html)

    # css file
    paged_report_css <- pkg_resource("css/paged_report.css")

    # template
    pagedown::html_paged(
        includes = list(before_body = country_html),
        css = c(coord_mec_css, paged_report_css, other_css),
        number_sections = number_sections,
        copy_resources = TRUE,
        ...
    )
}
