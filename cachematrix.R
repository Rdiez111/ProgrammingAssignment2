## makeCacheMatrix function creates a matrix, x,
## and calculates and caches its inverse.
## cacheSolve function returns the inverted matrix,
## either from the cached variable or by calculating it.


## This function creates a matrix, x, and caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
  x = matrix(1:4, ncol = 2)
  y <<- x
  z <<- solve(x)
}


## This function access cached inverted matrix,
## if exist, returns it and prints a message and the result,
## if it doesn't exist, calculates it and prints only the result.

cacheSolve <- function(x, ...) {
  if(!is.null(z)) {
    message("getting cached data")
    return(z)
  }
  else{
    z <<- solve(y)
    return(z)
    }
  }
        ## Return a matrix that is the inverse of 'x'

