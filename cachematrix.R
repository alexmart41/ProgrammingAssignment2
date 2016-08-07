## Put comments here that give an overall description of what your
## functions do
##These both functions return the inverse of a specific matrix (obviously from a square matrix)
## First of all, you have tu run both, and then use `makeCachematrix(w)´ as an argument to cachesolve where w is an square and invertible matrix
##So to obtain the inverse of a matrix, you have to put,for example, something like this : 
##w<-matrix(c(2,3,7,1),2,2)
##cacheSolve(makeCacheMatrix(w))

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
  ##return a list containing 4 functions (two setter and two getter define below)

   s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s  
}

