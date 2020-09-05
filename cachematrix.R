## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {##creates an "array" object 
  inv<-NULL
  x<-matrix(data = c(10,7,-10,-9,-12,10,-12,11,3),nrow = 3,ncol = 3)##It gives initial values to the array
  set <- function(y) {## modify the array
    x <<- y
    inv <<- NULL
  }
  get <- function() x##get the array
  setinv <- function(inverza) inv <<- inverza##set the matrix inverse
  getinv <- function() inv ##get the matrix inverse
  list(set = set, get = get,## list with the 4 functions
       setinv = setinv,
       getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x) {##receives a list that is obtained by calling the above function
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {##returns the matrix inverse  if it exists
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)##computes the matrix inverse  if it does not exist
  x$setinv(inv)
  inv
}
