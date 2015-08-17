## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function makes the CacheMatrix which is used by cachesolve function to store and retrieve the inverse of a mtrix from the cache.
makeCacheMatrix <- function(x = matrix()) {
  
  mat<-NULL
  set<-function(y)
  {
   x<<-y
   mat<<-NULL
    
  }
  get<-function()
  {
    x
  }
  setInverse<-function(inverse)
  {
  mat<<-inverse
  
  }
  getInverse<-function()
  {
    mat
  }
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)

}


## Write a short comment describing this function
##This function is used to actually cache the inverse if it doesnt exist. It also retrieves the cached inverse matrix if the inverse exists

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv<-x$getInverse()
if(!is.null(inv))
{
  message("getting inverse")
  return(inv)
  
}
data<-x$get()
inv=solve(data)
x$setInverse(inv)

}
