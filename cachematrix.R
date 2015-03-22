
makeCacheMatrix <- function(x = matrix()) {
D <- NULL
dataset <- function(y)
{
x <<- y
D <<- NULL
}
get <- function() x
setinverse <- function(inverse) D <<- inverse
getinverse <- function() D
list(dataset = dataset, get = get, setinverse = setinverse, getinverse = getinverse)
}


cacheSolve <- function(x, ...) {
D <- x$getinverse()
data <- x$get()
D <- solve(data, ...)
x$setinverse(D)
D
}
