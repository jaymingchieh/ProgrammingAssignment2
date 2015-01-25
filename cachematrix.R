## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix()) {
    m <- NULL
    get <- function() x
    setImatrix <- function(Imatrix) m <<- Imatrix
    getImatrix <- function() m
    
    # return a list of functions as an R object
    list(get=get, setImatrix=setImatrix, getImatrix=getImatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    m <- x$getImatrix()
    if(!is.null(m)){
        message("Cached data found. Getting result... Done.")
        return(m)
    }
    else {
        message("No cached data found. Calculating inverse matrix...")
        data <- x$get() 
        m <- solve(data) 
        x$setImatrix(m) 
        message("Done.")
        return(m)
    }
}
