#' Raw riso ink colors
#' 
#' @keywords internal
.riso_colors <- function() {
    c(
        "black"="#000000",
        "burgundy"="#914E72",
        "blue"="#0078BF",
        "green"="#00A95C",
        "medium-blue"="#3255A4",
        "bright-red"="#F15060",
        "risofederal-blue"="#3D5588",
        "purple"="#765BA7",
        "teal"="#00838A",
        "flat-gold"="#BB8B41",
        "hunter-green"="#407060",
        "red"="#FF665E",
        "brown"="#925F52",
        "yellow"="#FFE800",
        "marine-red"="#D2515E",
        "orange"="#FF6C2F",
        "fluorescent-pink"="#FF48B0",
        "light-gray"="#88898A",
        "metallic-gold"="#AC936E",
        "crimson"="#E45D50",
        "fluorescent-orange"="#FF7477",
        "cornflower"="#62A8E5",
        "sky-blue"="#4982CF",
        "sea-blue"="#0074A2",
        "lake"="#235BA8",
        "indigo"="#484D7A",
        "midnight"="#435060",
        "mist"="#D5E4C0",
        "granite"="#A5AAA8",
        "charcoal"="#70747C",
        "smoky-teal"="#5F8289",
        "steel"="#375E77",
        "slate"="#5E695E",
        "turquoise"="#00AA93",
        "emerald"="#19975D",
        "grass"="#397E58",
        "forest"="#516E5A",
        "spruce"="#4A635D",
        "moss"="#68724D",
        "sea-foam"="#62C2B1",
        "kelly-green"="#67B346",
        "light-teal"="#009DA5",
        "ivy"="#169B62",
        "pine"="#237E74",
        "lagoon"="#2F6165",
        "violet"="#9D7AD2",
        "orchid"="#AA60BF",
        "plum"="#845991",
        "raisin"="#775D7A",
        "grape"="#6C5D80",
        "scarlet"="#F65058",
        "tomato"="#D2515E",
        "cranberry"="#D1517A",
        "maroon"="#9E4C6E",
        "raspberry-red"="#D1517A",
        "brick"="#A75154",
        "light-lime"="#E3ED55",
        "sunflower"="#FFB511",
        "melon"="#FFAE3B",
        "apricot"="#F6A04D",
        "paprika"="#EE7F4B",
        "pumpkin"="#FF6F4C",
        "bright-olive-green"="#B49F29",
        "bright-gold"="#BA8032",
        "copper"="#BD6439",
        "mahogany"="#8E595A",
        "bisque"="#F2CDCF",
        "bubble-gum"="#F984CA",
        "light-mauve"="#E6B5C9",
        "dark-mauve"="#BD8CA6",
        "wine"="#914E72",
        "gray"="#928D88",
        "white"="#FFFFFF",
        "aqua"="#5EC8E5",
        "mint"="#82D8D5",
        "fluorescent-yellow"="#FFE900",
        "fluorescent-red"="#FF4C65",
        "fluorescent-green"="#44D62C"
    )
}

#' Adjust transparency of a hex string
#'
#' @param hex A 6-character hex string (e.g. #000000)
#' @param percent Transparency level from 0-1
#' @return A hex string
#' 
#' @export
hex_transparacy <- function(hex, percent=1) {
    if (percent < 0) percent <- 0
    if (percent > 1) percent <- 1
    percent <- toupper(as.hexmode(floor(percent * 255)))
    percent <- sprintf("%02s", percent)
    hex <- paste0(hex, percent)
    return(hex)
}

#' Riso color names
#'
#' @param sorted Optionally sort values
#' @return A character vector of names
#' 
#' @export
riso_names <- function(sorted=FALSE) {
    if (sorted) {
        return(sort(names(.riso_colors())))   
    } else {
        return(names(.riso_colors()))
    }
}

#' Get a risk ink color
#'
#' @param color Color name
#' @param alpha Color transparency
#' @return A hex string
#' 
#' @export
riso_color <- function(color, alpha=1) {
    riso_colors <- .riso_colors()
    if (color %in% names(riso_colors)) {
        hex <- riso_colors[[color]]
        if (alpha >= 1) {
            return(hex)
        } else {
            return(hex_transparacy(hex, alpha))
        }
    } else {
        cat("Riso Ink Colors: \n")
        print(riso_names(sorted=TRUE))
        stop("Invalid color")
    }
}

#' Plot one or more colors
#'
#' @param colors Character vector of hex strings
#' @param title Optional plot title
#' @return A `gg` object
#' 
#' @import ggplot2
#' @import ggforce 
#' 
#' @export
show_colors <- function(colors, title="") {
    df <- data.frame(hex=colors, y=1, x=seq(length(colors)))
    fill_values <- colors
    names(fill_values) <- colors
    ggplot(df, aes(x0=x, y0=y, r=0.4, fill=hex, expand=1)) + 
        geom_circle() + 
        scale_fill_manual(values=fill_values) +
        coord_equal() + 
        theme_void() +
        labs(title=paste0("  ", title, "\n")) + 
        xlim(0, max(7, nrow(df))+1) +
        theme(legend.position="none")
}
