## makeCacheMatrix is a constructor for matrix class with cached inverse method.
## cacheSolve is an API for getting the cached value of matrix inverse.

## Matrix class with cached inverse method
## Methods:
##  setMatrix(M) - sets the matrix as M
##  getMatrix()  - retrives the previously set matrix
##  inverse()    - calculate the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  # Not sure that I could change variable name in this assigment.
  cinverse <- matrix()
  
  setMatrix <- function(m) {
    x <<- m
    cinverse <<- matrix()
  }
  
  getMatrix <- function() x
  
  inverse <- function(){
    if(identical(cinverse, matrix()))
    {
      # Calculating matrix inverse...
      cinverse <<- solve(x)
      return(cinverse)
    }
    else
    {
      # Matrix inverse is cashed
      return(cinverse)
    }
  }
  
  list(setMatrix = setMatrix, getMatrix = getMatrix, inverse = inverse)
}


## API for makeCacheMatrix$inverse

cacheSolve <- function(x, ...) {
  x$inverse()
}
