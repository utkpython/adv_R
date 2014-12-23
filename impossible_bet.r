#Whatch these two videos
#https://www.youtube.com/watch?v=eivGlBKlK6M
#https://www.youtube.com/watch?v=C5-I0bAuEUE

looper <- function(x = 100) {
 
  a <- sample(1:x)
  count <- 0
  loopcount <- c()
  d <- sample(1:x,1)
  elements <- d
  loopelements <- c(elements)
  totalelements <- c()
  c <- TRUE
  e <- TRUE
  elements <- a[d]
  while( e == TRUE) {
    c <- TRUE
    while( c == TRUE) {
      loopelements <- c(loopelements,elements)
      count <- count+1
      if( elements != d){
        elements <- a[elements]
      }else{c <- FALSE}
      if(loopelements[1] == loopelements[length(loopelements)]){
        loopelements <- loopelements[-length(loopelements)]
      }
    }
    loopcount <- c(loopcount, count)
    count <- 0
    totalelements <- c(totalelements,loopelements)
    if(length(setdiff(a,totalelements))>1) {
      elements <- sample(setdiff(a,totalelements),1)
    }else(elements <- setdiff(a,totalelements))
    d <- elements
    elements <- a[d]
    loopelements <- c(d)
    if(length(setdiff(a,totalelements))== 0 ) {
      e <- FALSE
    }
  }
  sum(loopcount)
  return(list(loop = loopcount,maxmin = c(max(loopcount),min(loopcount),loopcount[1])))
}


maxloops <- rep(NA,10000)
minloops <- rep(NA,10000)
firstloops <- rep(NA,10000)
for( i in 1:10000) {
  lop <- looper()
  maxloops[i] <- lop$maxmin[1]
  minloops[i] <- lop$maxmin[2]
  firstloops[i] <- lop$maxmin[3]
}
hist(maxloops,breaks = c(1:100))
hist(minloops,breaks = c(1:100))
hist(firstloops,breaks = c(0:100))

length(which(maxloops <= 50))/10000
length(which(firstloops <= 50))/10000

