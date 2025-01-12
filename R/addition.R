#' Add two numeric values or paste two character values.
#' 
#' This function takes two single values and adds them,
#' if they are numeric, or pastes them together, otherwise.
#' The function checks the length of each argument, and
#' returns an error if any of the arguments has length
#' greater than one.
#' 
#' @usage addition(a, b)
#' @keywords addition, pasting, sum.
#' @param a A single value that is numeric, character or that
#'  can be coerced to character.
#' @param b A single value that is numeric, character or that
#'  can be coerced to character.
#' @return A numeric value with the sum of a and b, if both
#'  are numeric, or a string if both values can be coerced to
#'  to string.
#' @examples
#' # Adding numerc values
#' addition(1, 6)
#' # Pasting strings together
#' addition("nice ", "function")
#' @export

addition <- function(a, b) {
  if (length(a) > 1 || length(b) > 1) {
    stop("I can't accept a vector. Sorry.")
  }
  if (is.numeric(a) == TRUE && is.numeric(b) == TRUE) {
    a + b
  }else {
    paste0(as.character(a), as.character(b))
  }
}
