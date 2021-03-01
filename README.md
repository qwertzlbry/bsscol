
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bsscol

<!-- badges: start -->
<!-- badges: end -->

bsscol allows for a simple integration of the BSS base colors into
ggplot2 and alike.

## installation

You can install the released version of bsscol from
[Github](https://github.com/qwertzlbry/bsscol) with:

``` r
library(devtools) # install devtool first if not installed
install_github("qwertzlbry/bsscol")
```

With a future CRAN approval the package could be installed with:

``` r
install.packages("bsscol") # currently the installation works only over github
```

In order to run the following examples you’ll also need:

``` r
install.packages("ggplot2")
install.packages("plotrix")
install.packages("dplyr")
install.packages("hues")
```

## load packages

``` r
library(bsscol)
library(ggplot2)
library(plotrix)
library(hues)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
```

## the colors

``` r
# the colors and hex codes
bss_colors
#> # A tibble: 60 x 11
#>    R     G     B     hex    colour   Typ Full      col_pal hashed_hex excel_form
#>    <chr> <chr> <chr> <chr>  <lgl>  <dbl> <chr>       <dbl> <chr>           <dbl>
#>  1 255   255   255   FFFFFF NA         0 255,255,~       1 #FFFFFF             1
#>  2 0     0     0     000000 NA         0 0,0,0           2 #000000             2
#>  3 242   242   242   F2F2F2 NA         0 242,242,~       3 #F2F2F2             3
#>  4 191   191   191   BFBFBF NA         0 191,191,~       4 #BFBFBF             4
#>  5 21    95    144   155F90 NA         0 21,95,144       5 #155F90             5
#>  6 171   228   65    ABE441 NA         0 171,228,~       6 #ABE441             6
#>  7 229   35    61    E5233D NA         0 229,35,61       7 #E5233D             7
#>  8 238   236   34    EEEC22 NA         0 238,236,~       8 #EEEC22             8
#>  9 107   197   255   6BC5FF NA         0 107,197,~       9 #6BC5FF             9
#> 10 237   246   249   EDF6F9 NA         0 237,246,~      10 #EDF6F9            10
#> # ... with 50 more rows, and 1 more variable: name <chr>
pie3D(rep(2, 10),explode=0, theta=1.2, col=basic_colors, main="bss_colors")
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

``` r
#hashes <- bss_colors$hashed_hex
bss_colors <- bss_colors[order(bss_colors$col_pal),] 

swatch(bss_colors$hashed_hex)
```

<img src="man/figures/README-unnamed-chunk-2-2.png" width="100%" />

``` r
choice <- bss_colors %>% filter(col_pal == 7) 
swatch(choice$hashed_hex)
```

<img src="man/figures/README-unnamed-chunk-2-3.png" width="100%" />

``` r
swatch(basic_colors)
```

<img src="man/figures/README-unnamed-chunk-2-4.png" width="100%" />

## function: bss\_cols() - examples

The bss\_cols function allows you to get and reference hex colors in a
robust and flexible way.

``` r
# to get the information of a color
bss_cols("rot")
#>       rot 
#> "#E5233D"
# or to just use a color in a plot
ggplot(mtcars, aes(hp, mpg)) +
  geom_point(color = bss_cols("rot"),
             size = 2, alpha = .8)
```

<img src="man/figures/README-bss_cols-1.png" width="100%" />

## function: bss\_pal() - examples

With a subset of palettes of the original colors this function allows to
interpolate the palette colors for a certain number of levels, making it
possible to create shades between the original colors using
colorRampPalette from grDevices. Further, it gets a palette by name from
the list (“main” by default) and has a boolean condition determining
whether to reverse the order or not.

``` r
# the following subset color palettes are available 
bss_palettes
#> $monochrom_black1
#>            [,1]      [,2]      [,3]      [,4]      [,5]      [,6]     
#> hashed_hex "#FFFFFF" "#F2F2F2" "#D9D9D9" "#BFBFBF" "#A6A6A6" "#808080"
#> 
#> $monochrom_green
#>            [,1]      [,2]      [,3]      [,4]      [,5]      [,6]     
#> hashed_hex "#ABE441" "#EEFAD8" "#DDF4B3" "#CCEE8C" "#86BF1C" "#5A8112"
#> 
#> $monochrom_red
#>            [,1]      [,2]      [,3]      [,4]      [,5]      [,6]     
#> hashed_hex "#E5233D" "#FAD1D7" "#F4A6AF" "#EF7A89" "#B01528" "#760E1B"
#> 
#> $monochrom_yellow
#>            [,1]      [,2]      [,3]      [,4]      [,5]      [,6]     
#> hashed_hex "#EEEC22" "#FCFCD1" "#F9F9A6" "#F4F479" "#BDBD0F" "#7E7E0A"
#> 
#> $monochrom_blue
#>            [,1]      [,2]      [,3]      [,4]      [,5]      [,6]     
#> hashed_hex "#6BC5FF" "#E1F3FF" "#C4E8FF" "#A6DBFF" "#0F9FFF" "#006CB5"
#> 
#> $main
#>            [,1]      [,2]      [,3]      [,4]      [,5]      [,6]     
#> hashed_hex "#FFFFFF" "#000000" "#F2F2F2" "#BFBFBF" "#155F90" "#ABE441"
#>            [,7]      [,8]      [,9]      [,10]    
#> hashed_hex "#E5233D" "#EEEC22" "#6BC5FF" "#EDF6F9"
#> 
#> $main_only_color
#>            [,1]      [,2]      [,3]      [,4]      [,5]     
#> hashed_hex "#155F90" "#ABE441" "#E5233D" "#EEEC22" "#6BC5FF"

# interpolate the "rgb" palette (which only includes three colors, red, green and blue) to a length of 9:
bss_pal("main_only_color")(5)
#> [1] "#155F90" "#ABE441" "#E5233D" "#EEEC22" "#6BC5FF"
pie3D(rep(5, 6),explode=0, theta=1.2, col=bss_pal("monochrom_yellow")(6), main="bss_pal('monochrom_yellow')(6)")
```

<img src="man/figures/README-bss_pal-1.png" width="100%" />

## function: scale\_color\_bss() - example

Custom color scale functions for ggplot2.

``` r
# Color by discrete variable using default palette
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
  geom_point(size = 2) +
  scale_color_bss()
```

<img src="man/figures/README-scale_color_bss-1.png" width="100%" />

``` r
# Color by numeric variable with cool palette
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
  geom_point(size = 2, alpha = .6) +
  scale_color_bss(discrete = FALSE, palette = "monochrom_red")
```

<img src="man/figures/README-scale_color_bss-2.png" width="100%" />

## function: scale\_fill\_bss() - example

Custom fill scale functions for ggplot2.

``` r
# Fill by discrete variable with different palette + remove legend (guide)
ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_bss(palette = "main", guide = "none")
```

<img src="man/figures/README-scale_fill_bss-1.png" width="100%" />
