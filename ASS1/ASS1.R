#1 Summarize how I will workout your final grade for the course. Give percentages etc. Give my grading scale also e.g. What percentage is an A etc.
ddt = read.csv("DDT.csv")
head(ddt)
fcm_catfish = ddt[ddt$RIVER=="FCM" & ddt$SPECIES=="CCATFISH",]
fcm_catfish
fcm_catfish_ddt = fcm_catfish$DDT
fcm_catfish_ddt
mean(fcm_catfish_ddt)

# Problem 14
gal = read.csv("GALAXY2.csv")
head(gal)
plot(gal$VELOCITY)

# Problem 11
voltage = read.csv("VOLTAGE.csv")
oldData = subset(voltage, subset = LOCATION=="OLD")
oldDataTable = with(oldData,table(VOLTAGE))
oldDataTable
barplot(oldDataTable, space = 0, main = "Relative Frequency of Old Voltage")

new=subset(voltage,subset=LOCATION=="NEW")
new$VOLTAGE->vtn
vtn
max(vtn)
min(vtn)
lept<-min(vtn)-0.05
rept<-max(vtn)+0.05
rnge<-rept-lept
inc<-rnge/9
inc
seq(lept, rept,by=inc)->cl
cl
cvtn<-cut(vtn,breaks=cl)
new.tab=table(cvtn)
barplot(new.tab,space=0,main="Frequency Histogram(NEW)",las=2)
hist(vtn,nclass=10)

# Problem 8
freq = c(15,8,63,20)
RL = c("None","Both","LegsO","WheelsO")
l = rep(RL,freq)
pareto(l)

securityFreq = c(32,6,12)
RL1 = c("Windows 6","Explorer","Office")
l1 = rep(RL1,securityFreq)
names(securityFreq) <- RL1
securityFreq
