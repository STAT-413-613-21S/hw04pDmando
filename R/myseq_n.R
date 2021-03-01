myseq_n <- function(x, n){
  if (length(x) != 3){
    stop("Include exactly three numbers") #Checking for Errors
  }
  else if (length(n) != 1){
    stop("n must be one integer") #Checking for Errors
  }
  else if(n <= 0){
    stop("n must be a positive integer") #Checking for Errors
  }
  output <- x[n] #Running the function in a for/else loop. If less than 3
  #not running the function of more than three running the function
  for (i in 4:n) {
    if (n <= 3) {
      return(output)
    }
    else {
      x[i] <- x[i - 1] + (x[i-3] - x[i-2])/i
      }
    output <- x[n]
  }
  return(x[n])
}

myseq_n(x = c(2, 4, 3), n = 3) #Testing recursive function
myseq_n(x = c(2, 4, 3), n = 4)
myseq_n(x = c(2, 4, 3), n = 5)
myseq_n(x = c(2, 4, 3), n = 6)





