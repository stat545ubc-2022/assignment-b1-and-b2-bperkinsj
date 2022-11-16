#'Dice Roller
#' Mimics rolling a die or dice of the specified size (d6, d12, etc.).
#' @param faces The number of sides or faces of the die you wish to roll.
#' @param dice The number of dice you wish to roll. The default is 1.
#' @param add For rolls with more than one dice, whether you wish to add the dice together (TRUE) or get the mean, maximum, and minimum of the dice (FALSE). The default is TRUE.
#' @return Either one number (the result of the die rolled or the result of the dice rolled then added together) or three numbers (the mean, maximum, and minimum of the dice rolled).
#' @examples
#' dice_roller(20)
#' dice_roller(6, 4)
#' dice_roller(4, 5, FALSE)
#' dice_roller(0)
#' @export
dice_roller <- function(faces, dice = 1, add = TRUE) {
  if (faces <= 0 | dice <= 0) {
    return('I\'m sorry, negative dice are not possible by mundane means. Please consult your nearest wizarding authority to resolve this issue.')
  }
  else if (dice != 1 & add == TRUE) {
    numbers_sum <- 0
    for (i in 1:dice) {
      number_rolled <- round(stats::runif(1, 1, faces))
      numbers_sum <- numbers_sum + number_rolled
    }
    return(numbers_sum)
  }
  else if (dice != 1 & add == FALSE) {
    numbers_rolled <- c()
    for (i in 1:dice) {
      number_rolled <- round(stats::runif(1, 1, faces))
      numbers_rolled <- append(numbers_rolled, number_rolled)
    }
    roll_mean <- mean(numbers_rolled)
    roll_max <- max(numbers_rolled)
    roll_min <- min(numbers_rolled)
    return(c(roll_mean, roll_max, roll_min))
  }
  else {
    number_rolled <- round(stats::runif(1, 1, faces))
    return(number_rolled)
  }
}
