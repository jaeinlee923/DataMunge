#' freq_df Function
#'
#' This function transform the text data in a corpus. Then it cleans the corpus by turning the text into lowercase, removing punction, number, and "SMART" stopwords. It then returns a simple frequency dataframe. 
#' 
#' 
#' @return returns a dataframe of characters
#' @keywords cleanCorpus 
#' @export
#' @examples
#' freq_df(df$text)
#' 
#' @import tm 

freq_df = function(text)
{
  myCorpus = Corpus(VectorSource(text))
  myCorpus = tm_map(myCorpus, content_transformer(tolower))
  myCorpus = tm_map(myCorpus, removePunctuation)
  myCorpus = tm_map(myCorpus, removeNumbers)
  myCorpus = tm_map(myCorpus, removeWords, stopwords("SMART"))
  
  myDTM <- TermDocumentMatrix(myCorpus, control = list(minWordLength = 1))
  
  m <- as.matrix(myDTM)
  
  m <- sort(rowSums(m), decreasing = TRUE)
  freq_df = data.frame(word = names(m), freq= m)
  
  return(freq_df)
}
