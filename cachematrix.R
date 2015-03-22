## Put comments here that give an overall description of what your
## functions do

## this function makes a matrix  and creates vectors
makeCacheMatrix <- function(x = numeric()) {
        
        # set m to null
        m <- NULL
        
       #creates matrix
        setMatrix <- function(newValue) {
                x <<- newValue
                
               m <<- NULL
        }

 
        getMatrix <- function() {
                x
        }


        cacheInverse <- function(solve) {
                m <<- solve
        }


        getInverse <- function() {
                m
        }
        

        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}



## This function inverses goes in the opposite direction


cacheSolve <- function(y, ...) {
        # get the cached value
        m <- y$getInverse()
        # if a cached value exists return it
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }

        data <- y$getMatrix()
        m <- solve(data)
        y$cacheInverse(m)
        m
}

