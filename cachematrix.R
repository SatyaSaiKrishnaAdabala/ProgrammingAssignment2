## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

The function makeCache creates the special matrix and compiles the functions for setting the inverse and fetching the inverse from Cache and returns a list

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y){
    x <<- y
    m<<- NULL
  }
  
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list (set = set, get = get, setinv =setinv, getinv = getinv)
}



## Write a short comment describing this function

The Function cachesolve takes the matrix as an input and checks for the cache if the inverse already exists, if not it would call the setinv function to calculate the inverse and getinv to get it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m<- x$getinv()
  if(!is.null(m))
  {
    message("getting cached data")
    return(m)
  }
   data <- x$get()
   m <- solve(data)
   x$setinv(m)
   x$getinv()
}
