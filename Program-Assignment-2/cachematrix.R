##The following functions are used to calculate the inverse 
##of a matrix and cache previously run calculations for additional
## computations.


## This function creates a  cache matrix to set the value of a matrix,
## get the value of a matrix, set the value of the inverse,
## and get the value of the inverse.

makeCacheMatrix <- function(x = matrix()){
  Andre <- NULL
  set <- function(y) {
    x <<- y
    Andre<<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) Andre <<- inverse
  getinverse <- function() Andre
  list ( set = set, get = get, 
         setinverse = setinverse, 
         getinverse = getinverse)
}



## Calculates the inverse of the cache matrix from the first
## function while checking to see if the inverse has already
##been calculated and if it has skips the calculation step.

cacheSolve <- function(x, ...){
  Andre <- x$getinverse()
  if(!is.null(Andre)) {
    message("getting cached data")
    return(Andre)
  }
  data <- x$get()
  Andre <- solve(Data, ...)
  X$setinverse(Andre)
  Andre
}

