#'@title
#'  Convert back to forward slash
#'
#'@description
#'  takes a path from the clipboard or as an argument and pushes to forwardslash
#'
#'@details
#'  takes a path from the clipboard or as an argument and pushes to forwardslash
#'
#'\cr
#'Revision History
#' \tabular{ll}{
#'1.2 \tab 2018-03-28  the other \cr
#'1.1 \tab 2018-03-27  that \cr
#'1.0 \tab 2018-03-26  this \cr
#'}
#'
#'@author
#'
#'Jacob Strunk <jstrunk@@fs.fed.us>
#'
#'@param x (optional) string - if missing, pulls from clipboard
#'@param writeClipboard return string to clipboard?
#'@param return return string to R console?
#'
#'@return
#'  NULL or string
#'
#'@examples
#'
#'  writeClipboard("C:\\temp\\hello")
#'  forward()
#'  forward("C:\\temp\\hello")
#'
#'@import some_package,some_package2
#'
#'@export
#
#'@seealso \code{\link{writeClipboard}}\cr \code{\link{readClipboard}}\cr \code{\link{gsub}}\cr


forward=function(x=NA,writeClipboard=T,return=T){

  #get data from clipboard or from x
  if(is.na(x)) x=readClipboard()

  #substitute forwardslash for backslash
  y=gsub("\\\\","/",x)

  #send string somewhere
  writeClipboard(y)
  return(y)

}




