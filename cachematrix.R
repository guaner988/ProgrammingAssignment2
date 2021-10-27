## Write a short comment describing this function

makeCacheMatrix<-function(x=matrix()){
## In this makeCacheMatrix function, our aim is to make a matrix so that we can
## convert its inverse. The function named as inverse() takes the inverse of the
## function. Here, we created a vector and it can cache its inverse.
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function(){x}
  setInverse<-function(inverse){inv<<-inverse}
  getInverse<-function(){inv}
  list(set=set, get=get, setInverse=setInverse,getInverse=getInverse)
}

cacheSolve<-function(x,...){
  inv<-x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
mat<-x$get()
inv<-solve(mat,...)
x$setInverse(inv)
inv
}
