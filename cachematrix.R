## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv<- NULL
  set<-function(y) 
  {x<<-y
  inv<<-NULL}
  
  get<-function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, #set value of matrix
       get = get, #get value of matrix
       setinverse = setinverse, #Loads inverse matrix to special list during first call
       getinverse = getinverse) #Returns saved inverse

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  j <- x$getinverse()
  if (!is.null(j)) {
    message("getting cached data")
    return(j)  #loads get inverse data from first run
  }
  data <- x$get()
  j <- solve(data, ...)
  x$setinverse(j) #Loads inverse value to setinverse function, which saves it in getinverse
  j
  

        ## Return a matrix that is the inverse of 'x'
}
