## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

  makeCacheMatrix = function(x=matrix()) { ## input - Should be in matrix 
    m=NULL                ## Creating Null object for computing the inverse of a matrix
    set = function(){ 
      x<<-y ## Assign defined matrix value into R enviornment 
      m<-NULL
    }
    get<-function()x ## Get input Matrix data
    setinve <-function(solve) m<<-solve ## Set inverse of the matrix using solve function
    getinve <-function()m
    list(set=set,get=get,setinve=setinve,getinve=getinve) ## List the 4 defined object
  }
  
  
  
  cacheSolve <- function(x,...){
    m<-x$getinve()                   ## Getting the data from vector
    if(!is.null(m)){                 ## If m is not NULL then 
      message("Matrix has not changed") ## disply this message
      return(m)                      ##Return m value and close the function  
    } ## Else
    data<-x$get()             ## Get the data from makevector "Matrix or numeric"
    m<-solve(data,...)        ## Inverse/Mean calc and set it to m - defined object
    x$setinve(m)              ## Set value into x vector as m from above
    m                         ## returns m value as final inverse/mean
  }