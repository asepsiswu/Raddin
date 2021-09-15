Rmd2md <- function(){
  knitr::knit(rstudioapi::getSourceEditorContext()$path)
}


hugoRmd <- function() {
  ## helper function
  rmd <- rstudioapi::getSourceEditorContext()$path
  if (!grepl("rmd",rmd,T)) stop( rmd, " is not a Rmarkdown file. Aborting.", call.=FALSE)
  library(rmarkdown)
    knitr::opts_knit$set(upload.fun = knitr::image_uri) # modify to produce picture inside markdown file
  md <- gsub(x=rmd,'rmd','md',T)
  knitr::knit(rmd,md) # convert Rmarkdown file to md file
}


insertLIKE <- \()  rstudioapi::insertText(" %like% ")
insertIN <- \()  rstudioapi::insertText(" %in% ")
insertView <- \()  rstudioapi::insertText(" %>% View() ")
insertPaste <- \()  rstudioapi::insertText(" %s+% ")
