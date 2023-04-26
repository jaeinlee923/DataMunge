#' @title return_median Function
#'
#' @description This function returns median and mean values of a dataset. Since col_means on data frame with mixed values returns an error (Error in colMeans(df): 'x' must be numeric), I thought it woudl be nice to you a function that lets you know which columns are not numeric and still returns mean values.
#' @return returns string out put
#' @keywords return_median 
#' @export
#' @examples
#' return_median(airquality)
#' > return_median(air)
#' 1 median:  31.5   mean:  39.55882 
#' 2 median:  205   mean:  186.8039 
#' 3 median:  9.7   mean:  9.957516 
#' 4 median:  79   mean:  77.88235 
#' 5 median:  7   mean:  6.993464 
#' 6 median:  16   mean:  15.80392 
#' 

return_median <- function(x)
{
  for(i in 1:length(x)){
    if(is.numeric(x[,i])) {
      median <- median((x[,i]))
      mean <- mean((x[,i]))
      cat("column",i,"median: ", median, "  mean: ", mean, "\n")
    }
    else{
      cat("not numerical value.\n")
      next
    }
  }
}
