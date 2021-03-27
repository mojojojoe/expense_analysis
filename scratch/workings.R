library(dplyr,lubridate)

URL <- "/Users/basil/Code/Julia/EXPENSES_MODEL/expenses.csv"

statement <- read.csv(file=URL) %>%
              transmute(date=as.Date(date,format="%d%b%Y"),description,amount,balance,category)
dtmin <- statement$date[1]

expenses <- statement %>%
              select(date,amount,category) %>%
              filter(amount != 0.0) %>%
              transmute(date=date,
                        amount=-amount,
                        category=category,
                        interval=int_length(interval(dtmin,date))/86400)

grocery <- expenses %>%
  filter(category == "grocery")%>%
  select(date,amount,interval)




levels(expenses$category)
  summary(levels(expenses)



for k = 1:len(title){
    title[k] = dictionary[as.symbol(title[k])]

p=dictionary[:petrol]
g=dictionary[:grocery]
e=dictionary[:eatout]
h=dictionary[:house]
b=dictionary[:bank]
med=dictionary[:medical]
mot=dictionary[:motor]
c=dictionary[:cash]

using Plots
using StatPlots

plot(histogram(g[:days_between],normalize=:probability,ylims=(0,1.0),nbins=5),
        histogram(e[:days_between],normalize=:probability,ylims=(0,1.0),nbins=10),
        histogram(h[:days_between],normalize=:probability,ylims=(0,1.0),nbins=5),
        histogram(p[:days_between],normalize=:probability,ylims=(0,1.0),nbins=5),
        histogram(b[:days_between],normalize=:probability,ylims=(0,1.0),nbins=5),
        histogram(med[:days_between],normalize=:probability,ylims=(0,1.0),nbins=5),
        histogram(mot[:days_between],normalize=:probability,ylims=(0,1.0),nbins=5),
        histogram(c[:days_between],normalize=:probability,ylims=(0,1.0),nbins=5),
    layout=@layout(
        [g eat h p;
         b med mot c]),
    title=["Grocery" "Eating out" "House" "Petrol" "Bank" "Medical" "Motor" "Cash"])

prob=1/mean(mot[:days_between])
(1-prob)/prob



prob <- function(msg,dictionary,title){
    println(msg," ",size(dictionary[:days_between]))
    theta=1/mean(dictionary[:days_between])
    P=0
    sum=0
    for k=0:5 {
        P = theta * (1-theta)^k
        print("For Y, the probability that the number of failures = ",k," is P = ",P,"\n")
        sum += P
    }
    println(sum)
}



println("Eating out has a sample size of ", size(e[:days_between]))
theta=1/mean(e[:days_between])
P=0
sum=0
for k=0:5
        P=theta*(1-theta)^k
        print("For Y, the probability that the number of failures = ",k,"  is   P  = ",P,"\n")
        sum += P
end
println(sum)

println("House expenditure has a sample size of ", size(h[:days_between]))
theta=1/mean(h[:days_between])
P=0
sum=0
for k=0:20
        P=theta*(1-theta)^k
        print("For Y, the probability that the number of failures = ",k,"  is   P  = ",P,"\n")
        sum += P
end
println(sum)

println("Petrol expenditure has a sample size of ", size(p[:days_between]))
theta=1/mean(p[:days_between])
P=0
sum=0
for k=0:20
        P=theta*(1-theta)^k
        print("For Y, the probability that the number of failures = ",k,",  P  is ",P,"\n")
        sum += P
end
println(sum)

ghist =histogram(-g[:amount],normalize=:probability,bins=10,ylim=(0,0.6))
eathist =histogram(-e[:amount],normalize=:probability,bins=10,ylim=(0,0.6))
hhist =histogram(-h[:amount],normalize=:probability,bins=10,ylim=(0,0.6))
phist =histogram(-p[:amount],normalize=:probability,bins=10,ylim=(0,0.6))
bhist =histogram(-b[:amount],normalize=:probability,bins=10,ylim=(0,0.6))
medhist =histogram(-med[:amount],normalize=:probability,bins=10,ylim=(0,0.6))
mothist =histogram(-mot[:amount],normalize=:probability,bins=10,ylim=(0,0.6))
chist =histogram(-c[:amount],normalize=:probability,bins=10,ylim=(0,0.6))
plot(ghist, eathist, hhist, phist, bhist, medhist, mothist, chist,
    layout=@layout([ghist eathist hhist phist;
                    bhist medhist mothist chist]),
    title=["Grocery" "Eating out" "House" "Petrol" "Bank" "Medical" "Motor" "Cash"],grid=true)

petrol <- expenses %>%
  filter(category=="petrol") %>%
  select(date,amount,interval)

house <- expenses %>%
  filter(category=="house")%>%
  select(date,amount,interval)

electricity<- expenses %>%
  filter(category=="electricity")%>%
  select(date,amount,interval)

clothes<- expenses %>%
  filter(category=="clothes")%>%
  select(date,amount,interval)

motor<- expenses %>%
  filter(category=="motor")%>%
  select(date,amount,interval)

care<- expenses %>%
  filter(category=="selfcare")%>%
  select(date,amount,interval)
