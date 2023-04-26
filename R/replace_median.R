#' replace_median Function
#'
#' This function fills your data that contain NA values with each column's mean values. 
#' @return returns a data frame
#' @keywords replace_median 
#' @export
#' @examples
#' replace_median(df)
#' 

replace_median <- function(x)
{
  for(i in 1:length(x)){
    if(is.numeric(x[,i])) {
      m <- median(sort(x[,i]))
      na <- which(is.na(x[,i]))
      x[na,i] <- m
    }
    else{
      cat("column [", i, "] isn't a numerical value.")
      next
    }
  }
  cat("Numeric values were replaced with column median")
return(x)
}
