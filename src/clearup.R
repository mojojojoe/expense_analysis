library(dplyr)
library(lubridate)

HOMEDIR="/home/boris"
PROJECTDIR="/dev/my-work/expenses"
RESOURCE = "/resources/statement_export.csv"
URI = paste0(HOMEDIR,PROJECTDIR,RESOURCE)

extract <- function(uri){
    read.csv(file=uri) %>%
        transmute(date=as.Date(date,format="%d-%b-%Y"),
                  amount=amount,
                  category,) %>%
        filter(amount != 0.0)
}

s <- extract(URI)

cat <- levels(s$category)


                                        #working on this function...
                                        #where I want to automatically name categories grouped and summed available to the local env

for(t in 1:length(cat) {
    cat[t] = s %>% group_b})

    cat[8]

