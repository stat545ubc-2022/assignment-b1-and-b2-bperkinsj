
<!-- README.md is generated from README.Rmd. Please edit that file -->

# diceRoller

<!-- badges: start -->
<!-- badges: end -->

The goal of diceRoller is to simulate rolling dice. You choose the size
(or number of faces) of the die, the number of dice to be rolled, and,
if you roll several dice, whether to add them all together or get the
mean, max and min (in that order) of the dice rolled.

## Installation

You can install the development version of diceRoller from
[GitHub](https://github.com/stat545ubc-2022/assignment-b1-and-b2-bperkinsj)
with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2022/assignment-b1-and-b2-bperkinsj")
```

## Example

Behind you, rushing down the hill, are kobolds with murder in their eyes
and very sharp, possibly torturous, tools in their hands. Before you is
a gaping chasm with only a spindly rope bridge spanning it. Below, water
thunders through the rift. Roll me 1d20 to see how well you can
carefully and deftly cross the bridge.

``` r
library(diceRoller)
dice_roller(20)
#> [1] 11
```

Pretty good! Or terrible! But turns out it doesn’t matter what you
rolled, the bridge was going to collapse regardless, sending you
plummeting into the rapids! And no, you can’t reach out and grasp a
nearby tree branch or rock ledge because you have no choice in this
adventure. Choice is an illusion anyway.

Let’s roll damage!

``` r
dice_roller(6, 4)
#> [1] 17
```

That’s a lot of damage! But I forgot to mention, if you roll a 6 on one
of these dice, the die explodes and you roll another d6! Let’s see if
you roll any sixes here.

``` r
dice_roller(6, 4, FALSE)
#> [1] 2.5 5.0 1.0
```

You got lucky today. Or as lucky as you can be hurtling down rapids.

What’s that? This adventure is bull\*\*\*\*? Hey, I didn’t write it.
Okay, I did, but what’re you gonna do about it, huh? Just try to
re-write reality, why don’t you. Roll some negative dice.

``` r
dice_roller(0)
#> [1] "I'm sorry, negative dice are not possible by mundane means. Please consult your nearest wizarding authority to resolve this issue."
```

See? I thought not.

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
