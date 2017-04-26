## Functions to create a matrix and cache its inverse.

## Function to create a local object for a matrix and its inverse, and a global
## list of four functions to: Set the Matrix, Get the Matrix data, Set the
## inverse of the matrix, and get the inverse of the matrix

makecachematrix <- function(matrixdata = matrix()){
  matrixinverse <- NULL
  set <- function(matrixinput){
    matrixdata <<- matrixinput
    matrixinverse <<- NULL
  }
  get <- function() matrixdata
  setinverse <- function(inverse) matrixinverse <<- inverse
  getinverse <- function() matrixinverse
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}



## This function checks the local makecachematrix environment for the value of the
## matrix inverse, calculate it (if not previously done), and output.

cachesolve <- function(x){
  matrixinverse <- x$getinverse()
  if(!is.null(matrixinverse)){
    message("Getting cached data.")
    return(matrixinverse)
  }
  matrixdata <- x$get()
  matrixinverse <- solve(matrixdata)
  x$setinverse(matrixinverse)
  matrixinverse
}