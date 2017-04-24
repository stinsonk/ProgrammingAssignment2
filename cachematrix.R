## Functions to create a matrix and cache its inverse.

## This function creates a global object for a given square matrix and its inverse.

makecachematrix <- function(x){
  cachematrix <<- x
  cachematrixinverse <<- solve(x)
  invisible(x)
}


## This function takes a previously defined square matrix, and calculates its inverse
## if not previously calculated and cached.

cachesolve <- function(x = cachematrix){
  if(exists("cachematrixinverse") == TRUE){
    message("Getting cached data.")
    cachematrixinverse
  }
  else{
    message("Calculating matrix inverse.")
    cachematrixinverse <<- solve(x)
    cachematrixinverse
  }
}