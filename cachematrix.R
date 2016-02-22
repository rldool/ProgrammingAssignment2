## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix stores X matrix 
## cacheSolve displays the inverse of a matrix in the memory 

## Write a short comment describing this function
## makeCacheMatrix uses scoping to store the matracies to memory

makeCacheMatrix <- function(X = matrix()) {
	inverse <- NULL
	set <- function(Y){
		X <<- Y
		inverse <<- NULL
	}
	get <- function() X
	setinverse <- function(Inverse) inverse <<- Inverse
	getinverse <- function() inverse
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function
## cacheSolve returns a matrix that is the inverse of x, by first checking to see
## if it is already returned as an inverse then by using the cached memory to use the function getinverse


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inverse <- X$getinverse()
	if(!is.null(inverse)){
		message("matrix is in memory")
		return(inverse)
	}
	data <- X$get()
	inverse <- inversed(data, ...)
	X$setinverse(inverse)
	inverse
}
 
