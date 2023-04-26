#' cleanText Function
#'
#' This function cleans the text data. When the string of texts (df$text) is run through this function, the function will remove text after the "@@" symbol, "https://", and "http://". Then it removes puncuation, numbers, tabs, back space at the beginning, and graphical texts. Then it cleans up sentences by removing ASCII-control characters and digits. 
#' 
#' 
#' @return returns a list of characters
#' @keywords cleanText 
#' @export
#' @examples
#' cleanText(df$text)
#' 
#' @import stringr tm

cleanText = function(text)
{
  # remove at @
  x = gsub("@\\w+", "", text)
  # remove punctuation
  x = gsub("[[:punct:]]", "", x)
  # remove numbers
  x = gsub("[[:digit:]]", "", x)
  # remove links http
  x = gsub("http\\w+", "", x)
  # remove tabs
  x = gsub("[ |\t]{2,}", "", x)
  # remove blank spaces at the beginning
  x = gsub("^ ", "", x)
  # remove blank spaces at the end
  x = gsub(" $", "", x)
  # remove some more
  x = gsub('https://','',x)
  x = gsub('http://','',x)
  # remove graphical texts
  x = gsub('[^[:graph:]]', ' ',x)
  # remove all punctuation except period
  x = gsub('[[:punct:]]', '', x)
  # clean up sentences
  x = gsub('[[:cntrl:]]', '', x)
  x = gsub('\\d+', '', x)
  x = str_replace_all(x,"[^[:graph:]]", " ")
  # convert to lower case
  x = tolower(x)
  x = removeWords(x)
  return(x)
}
