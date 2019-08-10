library(ggplot2)
library(ggthemr)
library(reshape2)
data1<-data.frame(square2000)
runtime=1:1800
dat1<-cbind(runtime,data1[1:1800,c(1,2,3,9,10,11,17,18,19)])
names(dat1) = c("runtime", "task0","task1","task2","task3","task4","task5","task6","task7","task8")
mdat=melt(dat1,id='runtime')
#all square method
method = rep("square", times=nrow(mdat))
mdat<-cbind(mdat,method)
#ggplot(data=mdat, aes(x=runtime, y=value, colour= method)) +geom_line() +facet_wrap(~variable)

data2<-data.frame(chess2000)
dat2<-cbind(runtime,data2[1:1800,c(1,3,5,10,12,14,17,19,21)])
#names(dat2) = c("runtime", "core1","core2","core3","core4","core5","core6","core7","core8","core9","core10","core11","core12","core13","core14","core15","core16","core17","core18")
names(dat2) = c("runtime", "task0","task1","task2","task3","task4","task5","task6","task7","task8")
mdat2=melt(dat2,id='runtime')
method = rep("chessboard", times=nrow(mdat2))
mdat2<-cbind(mdat2,method)

mdat_all<-rbind(mdat,mdat2)
ggplot(data=mdat_all, aes(x=runtime, y=value, colour= method)) +geom_line() +
  facet_wrap(~variable) +ylab("Temperature") +xlab("Time")


              