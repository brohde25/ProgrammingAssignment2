<<<<<<< HEAD
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
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
