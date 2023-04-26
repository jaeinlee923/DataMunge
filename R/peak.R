#' peak Function
#'
#' This function returns the peak value of density from a numerical varaible. The example is on how to use this function to graph density and it's peak. category1 value would be the variable you want to group the data to, and category2 value could be the secondary grouping variable, in this case, to produce facets. If you don't need the facet or a second category to group results, then just use category1. 
#' 
#' 
#' @return returns a numerical value
#' @keywords peak 
#' @export
#' @examples
#' vline <- data %>% 
#' group_by(category1, category2) %>% 
#' dplyr::summarise(peak = peak(var))
#' 
#' ggplot(data, aes(x = var, fill = category1)) + 
#' geom_density(alpha = 0.3) + facet_wrap(~category2) + 
#' geom_vline(data = vline, aes(xintercept=peak, color = category1), show.legend = FALSE)
#' 
#' 
#' @import 

peak <- function(x) {
  max_y <- which.max(density(x)$y)
  max_x <- density(x)$x[max_y]
  return(max_x)
}
