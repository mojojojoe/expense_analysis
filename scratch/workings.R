library(dplyr)
library(lubridate)
## VARIABLES###################
## File structure
ROOT=""
HOMEDIR="home"
USERDIR="boris"
DEVDIR="dev"
WORKDIR="my-work"
PROJECTDIR="expenses"
RESOURCEDIR = "resources"
RESOURCE = "expenses.csv"
URI = paste(ROOT,HOMEDIR,USERDIR,DEVDIR,WORKDIR,PROJECTDIR,RESOURCEDIR,RESOURCE,sep="/")

##HELPER FUNCTIONS#############
pull_data <- function(uri){
    read.csv(file=uri, header=TRUE)}# %>%
    #    transmute(date=as.Date(date,"%d-%b-%Y"),amount=as.numeric(amount),category=category) %>%
     #   filter(amount > 0)}
    # %>%
    #     group_by(category) %>%
    #     summarise(sum(amount)) %>%
    #     sort()
    #     }


##DATA EXTRACTION##############
s <- pull_data(URI)
s
s %>% select(Date=as.Date(Date,"%d-%B-%Y"),Amount,Category) %>% group_by(Category)

sum(s$amount)

#broken...
#s %>% transmute(`sum(amount)`=`sum(amount)`,category=as.character(category))

s
plot(s)

cat <- levels(s$category)
cat


##working on this function...
##where I want to automatically name categories grouped and summed available to the local env
for(t in 1:length(cat) {
    cat[t] = s
    
    
    
