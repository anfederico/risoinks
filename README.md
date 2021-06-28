
## Riso Ink Colors

Color palettes were extracted from [Riso Ink
Colors](https://www.stencil.wiki/colors)

> Risograph inks are soy-based and do not conform exactly to any color
> standards. The listings below are approximates for reference only.
> Additionally, Riso inks are also slightly transparent and allow for
> variations in overprint and based on the color of paper they are
> printed on.

## Functions

``` r
riso_names()
```

    #>  [1] "black"              "burgundy"           "blue"              
    #>  [4] "green"              "medium-blue"        "bright-red"        
    #>  [7] "risofederal-blue"   "purple"             "teal"              
    #> [10] "flat-gold"          "hunter-green"       "red"               
    #> [13] "brown"              "yellow"             "marine-red"        
    #> [16] "orange"             "fluorescent-pink"   "light-gray"        
    #> [19] "metallic-gold"      "crimson"            "fluorescent-orange"
    #> [22] "cornflower"         "sky-blue"           "sea-blue"          
    #> [25] "lake"               "indigo"             "midnight"          
    #> [28] "mist"               "granite"            "charcoal"          
    #> [31] "smoky-teal"         "steel"              "slate"             
    #> [34] "turquoise"          "emerald"            "grass"             
    #> [37] "forest"             "spruce"             "moss"              
    #> [40] "sea-foam"           "kelly-green"        "light-teal"        
    #> [43] "ivy"                "pine"               "lagoon"            
    #> [46] "violet"             "orchid"             "plum"              
    #> [49] "raisin"             "grape"              "scarlet"           
    #> [52] "tomato"             "cranberry"          "maroon"            
    #> [55] "raspberry-red"      "brick"              "light-lime"        
    #> [58] "sunflower"          "melon"              "apricot"           
    #> [61] "paprika"            "pumpkin"            "bright-olive-green"
    #> [64] "bright-gold"        "copper"             "mahogany"          
    #> [67] "bisque"             "bubble-gum"         "light-mauve"       
    #> [70] "dark-mauve"         "wine"               "gray"              
    #> [73] "white"              "aqua"               "mint"              
    #> [76] "fluorescent-yellow" "fluorescent-red"    "fluorescent-green"

``` r
riso_color("indigo")
```

    #> [1] "#484D7A"

``` r
hex_transparacy("#484D7A", percent=0.5)
```

    #> [1] "#484D7A7F"

``` r
riso_color("indigo", alpha=0.5)
```

    #> [1] "#484D7A7F"

``` r
show_colors(riso_color("indigo"), "Indigo")
```

<img src="README_files/figure-gfm/unnamed-chunk-6-1.png" style="display: block; margin: auto auto auto 0;" />

## Examples

#### Shading

``` r
colors <- c(
    riso_color("indigo", alpha=1),
    riso_color("indigo", alpha=0.8),
    riso_color("indigo", alpha=0.6),
    riso_color("indigo", alpha=0.4),
    riso_color("indigo", alpha=0.2))
    
print(colors)
```

    #> [1] "#484D7A"   "#484D7ACC" "#484D7A99" "#484D7A66" "#484D7A33"

``` r
show_colors(colors, "Indigo Shades")
```

<img src="README_files/figure-gfm/unnamed-chunk-7-1.png" style="display: block; margin: auto auto auto 0;" />

#### Custom palettes

``` r
colors <- c(
    riso_color("granite"),
    riso_color("scarlet"),
    riso_color("sunflower"),
    riso_color("cornflower"),
    riso_color("emerald"))

show_colors(colors, "Bright Colors w/ NA")
```

<img src="README_files/figure-gfm/unnamed-chunk-8-1.png" style="display: block; margin: auto auto auto 0;" />

``` r
colors <- c(
    riso_color("orchid"),
    riso_color("violet"),
    riso_color("grape"),
    riso_color("plum"),
    riso_color("midnight"))

show_colors(colors, "Purples")
```

<img src="README_files/figure-gfm/unnamed-chunk-9-1.png" style="display: block; margin: auto auto auto 0;" />

``` r
colors <- c(
    riso_color("midnight"),
    riso_color("turquoise", alpha=0.8),
    riso_color("violet", alpha=0.9),
    riso_color("scarlet", alpha=0.8),
    riso_color("apricot", alpha=0.9),
    riso_color("cornflower", alpha=0.9),
    riso_color("charcoal", alpha=0.2))

show_colors(colors, "Halcyon-esque")
```

<img src="README_files/figure-gfm/unnamed-chunk-10-1.png" style="display: block; margin: auto auto auto 0;" />

## Available Colors

All available colors at 100%, 75%, 50%, and 25% transparency
<img src="README_files/figure-gfm/unnamed-chunk-11-1.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-2.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-3.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-4.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-5.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-6.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-7.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-8.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-9.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-10.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-11.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-12.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-13.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-14.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-15.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-16.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-17.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-18.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-19.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-20.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-21.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-22.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-23.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-24.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-25.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-26.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-27.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-28.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-29.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-30.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-31.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-32.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-33.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-34.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-35.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-36.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-37.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-38.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-39.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-40.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-41.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-42.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-43.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-44.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-45.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-46.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-47.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-48.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-49.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-50.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-51.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-52.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-53.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-54.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-55.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-56.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-57.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-58.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-59.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-60.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-61.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-62.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-63.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-64.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-65.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-66.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-67.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-68.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-69.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-70.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-71.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-72.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-73.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-74.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-75.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-76.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-77.png" style="display: block; margin: auto auto auto 0;" /><img src="README_files/figure-gfm/unnamed-chunk-11-78.png" style="display: block; margin: auto auto auto 0;" />
