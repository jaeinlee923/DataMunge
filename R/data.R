#' pokemon
#'
#'  This dataset contains information on all 1033 Pokemon from all Seven Generations of Pokemon. The information contained in this dataset include Base Stats, Performance against Other Types, Height, Weight, Classification, Egg Steps, Experience Points, Abilities, etc. The information was scraped from http://serebii.net/
#'
#' @format A data frame with 802 rows and 23 variables:
#' \describe{
#'   \item{Col1}{Number: Number of the Pokemon in the National Pokedex}
#'   \item{Col2}{Name: Name of the Pokemon}
#'   \item{Col3}{Type 1: Primary Type of the Pokemon}
#'   \item{Col4}{Type 2: Secondary Type of the Pokemon}
#'   \item{Col5}{Abilities: A list that contains the abilities of the Pokemon}
#'   \item{Col6}{HP: Base Hit Points stat of the Pokemon}
#'   \item{Col7}{Att: Base Attack stat of the Pokemon}
#'   \item{Col8}{Def: Base Defense stat of the Pokemon}
#'   \item{Col9}{Spa: Base Special Attack stat of the Pokemon}
#'   \item{Col10}{Spe: Base Speed stat of the Pokemon} 
#'   \item{Col11}{BST: Sum of all the base stats}
#'   \item{Col12}{Mean: Mean of the base stat}
#'   \item{Col13}{Standard Deviation: Standard deviation of the base stats}
#'   \item{Col14}{Generation: The Generation in which the Pokemon was introduced}
#'   \item{Col15}{Experience Type: The Experience Group to which the Pokemon belongs}
#'   \item{Col16}{Experience to level 100: Amount of experience the Pokemon needs to level up to 100}
#'   \item{Col17}{Final Evolution: Denotes if the Pokemon is a Final Evolution}
#'   \item{Col18}{Catch Rate: Catch Rate of the Pokemon}
#'   \item{Col19}{Legendary: Denotes if the Pokemon is Legendary}
#'   \item{Col20}{Mega Evolution: Denotes if the Pokemon is a Mega Evolution}
#'   \item{Col21}{Alolan Form: Denotes if the Pokemon is an Alolan Form}
#'   \item{Col22}{Galarian Form: Denotes if the Pokemon is a Galarian Form}
#'   \item{Col23}{Against { }: Effectiveness of certain type against the Pokemon}
#'   }
#' @source <https://www.kaggle.com/datasets/maca11/all-pokemon-dataset>
"pokemon"
