

## this function returns the list of functions getMatrix , getMatrix , cacheInverse ,  setInverse
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


        setInverse <- function() {
                m
        }
        

        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = setInverse)
}



## This function is the inverse function


cacheSolve <- function(y, ...) {
        # get the cached value
        m <- y$setInverse()
        # if a cached value exists return it
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }

        data <- y$getMatrix()
        m <- solve(data)
        y$setInverse(m)
        m
}

