#' mice_RF Function
#'
#' This function fills your data that contain NA values with predicted values using the random forest method. m argument is automatically set as 5 meaning it will cycle through the imputing prediction process for 5 times.
#' @return returns a data frame
#' @keywords mice_RF 
#' @export
#' @examples
#' mice_RF(df)
#' 

#' @import mice

mice_RF <- function(x)
{
  imputed_x <- mice(x, m = 5,  method = "rf")
  finished_x <- complete(imputed_x, 1)
  cat("\nFollowing values were replaced:",which(is.na(x)))
  return(finished_x)
}
