#' remindMe Function
#'
#' Sick and tired of looking up how to format date and time? Well, I am. This function tells you which code means what inside of as.Date() function or format() function etc.
#' 
#' 
#' @return returns a character string
#' @keywords remindMe 
#' @export
#' @examples
#' remindMe()
#' 

remindMe = function()
{
  cat("  %a | Abbreviated weekday\n  %A | Full weekday\n  %b | Abbreviated month\n  %B | Full month\n  %c | Locale-specific date and time\n  %d | Decimal date\n  %H | Decimal hours (24 hour)\n  %I | Decimal hours (12 hour)\n  %j | Decimal day of the year\n  %m | Decimal month\n  %M |  Decimal minute\n  %p | Locale-specific AM/PM\n  %S | Decimal second\n  %U | Decimal week of the year (starting on Sunday)\n  %w | Decimal Weekday (0=Sunday)\n  %W | Decimal week of the year (starting on Monday)\n  %x | Locale-specific Date\n  %X | Locale-specific Time\n  %y | 2-digit year\n  %Y | 4-digit year\n  %z | Offset from GMT\n  %Z | Time zone (character)")
}

remindMe()

