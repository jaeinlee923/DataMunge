#' replace_mean Function
#'
#' This function fills your data that contain NA values with each column's mean values. 
#' @return returns a data frame
#' @keywords replace_mean 
#' @export
#' @examples
#' replace_mean(df)
#' 

replace_mean <- function(x)
{
  for(i in 1:length(x)){
    if(is.numeric(x[,i])) {
      m <- mean(x[,i], na.rm = TRUE)
      na <- which(is.na(x[,i]))
      x[na,i] <- m
    }
    else{
      cat("column [", i, "] isn't a numerical value.")
      next
    }
  }
  cat("Numeric values were replaced with column mean")
  return(x)
}

