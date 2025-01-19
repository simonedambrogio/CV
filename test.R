make_bold <- function(authors, name2bold = c("D'Ambrogio", "D’Ambrogio", "DAmbrogio", "dambrogio", "Dambrogio")  ){
  
  for( i in 1:length(authors) ) {
    
    isbold <- FALSE
    author <- authors[[i]]
    attributes <- names(author)
    
    
    for( attribute in attributes ){
      isbold <- isbold | author[[attribute]] %in% name2bold
    }
    
    if(isbold){
      authors[[i]] <- vitae::csl_name(family="\\textbf{D'Ambrogio}", given = "Simone")
    }
    
  }
  
  return( authors )
}

