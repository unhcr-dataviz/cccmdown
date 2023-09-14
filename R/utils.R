pkg_resource <- function(...) {
    system.file("resources", ..., package = "cccmdown", mustWork = TRUE)
}
