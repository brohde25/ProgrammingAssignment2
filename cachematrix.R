## Creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
     m <- NULL
     get <- function(y) {
     x <<- y
     m <<- NULL   ##initialize the matrix
  }
  get <- function() x
  setinv <- function(inv) m <<- inv  ##inverse the matrix
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}

cacheSolve <- function(x, ...) {
         m <- x$getinv
         if(!is.null(m)) {
         message("getting cached data")
         return(m)
  }
                               ## executed if no cached inverted matrix
         data <- x$get()       ## store matrix in data
         m <- solve(data, ...) ## inverse the matrix
         x$setinv(m)
         return(m)
}


## computes the inverse of the matrix supplied by makeCacheMatrix.
