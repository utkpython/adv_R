

time <- 0
srvtime <- 0
arvtime <- 0
arrival_tm <- rexp(1,5) ###how long before customers arrive(with a rate of 5 an hour avg)
time <- time + arrival_tm
waittimes <- c()
serv <- c()
arv <- c()

while(arvtime < 8){
  servc_tm <- rexp(1, 5) ###how long it takes to servie them
  serv <- c(serv, servc_tm)
  arrival_tm <- rexp(1,5) ###arrival of the next person
  arv <- c(arv, arrival_tm)
  arvtime <- arvtime + arrival_tm
  if(servc_tm+srvtime > arvtime){
    srvtime <- srvtime + servc_tm
    waittimes <- c(waittimes, (srvtime-arvtime))
  }else{srvtime <- srvtime + arvtime
        waittimes <- c(waittimes, 0)}
}

waittimes
avg(waittimes)

