## The functions here make the caches inverse of a matrix object.

makeCacheMatrix <- function(x = matrix()) {
  inve <- NULL
  set <- function(ma) {
    x <<- ma
    inve <<- NULL
  }
  get <- function() {
    x
  }
setInverse <- function(inverse) {
  inve <<- inverse
}
list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## The functions here calculate the returned inverse of the matrix.

cacheSolve <- function(x, ...) {
inve <- x$getInverse()
if (!is.null(inve)) {
  message("get inverse data")
  return(inve)
}
data <- x$get()
inve <- solve(data, ...)
x$setsolve(inve)
inve
}
