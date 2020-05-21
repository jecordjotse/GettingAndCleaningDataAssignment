library(reshape2);library(plyr);library(dplyr);library(magrittr)
## Read Datasets
features <- read.table("./Dataset/features.txt")
act <- as.factor(read.table("./Dataset/activity_labels.txt"))
tr_act_labels <- read.table("./Dataset/train/y_train.txt")
tr_act_sets <- read.table("./Dataset/train/X_train.txt")
ts_act_labels <- read.table("./Dataset/test/y_test.txt")
ts_act_sets <- read.table("./Dataset/test/X_test.txt")
tr_subjects <- read.table("./Dataset/train/subject_train.txt")
ts_subjects <- read.table("./Dataset/test/subject_test.txt")
## Pre Cleaning for Merging
names(tr_subjects)<-"subject"
names(ts_subjects)<-"subject"
names(tr_act_labels)<-"activity"
names(ts_act_labels)<-"activity"
## Merging
new_tr <- cbind(tr_subjects,tr_act_labels,tr_act_sets)
new_ts <- cbind(ts_subjects,ts_act_labels,ts_act_sets)
new_ts$set <- 2
new_tr$set <- 1
new_set <- rbind(new_tr,new_ts)
new_set <- arrange(new_set,subject)
new_set_measures <- select(new_set, paste0("V",grep('^.*-(mean|std)\\(.*$',features$V2)))
new_set_other_Columns <- select(new_set, subject, activity, set)
new_set <- cbind(new_set_other_Columns,new_set_measures)
new_set$set<-factor(new_set$set,c(1,2),c('train','test'))
## Using Descriptive Activity for Activities
new_set$activity<-factor(new_set$activity,act$V1,act$V2)
## Creating a measurement Feature Table
f<-data.frame(name=paste0("V",grep('^.*-(mean|std)\\(.*$',features$V2)),description=features[grep('^.*-(mean|std)\\(.*$',features$V2),2])
f[grep('^.*-(mean)\\(.*$',f$description),'statistic'] <- 'mean'
f[grep('^.*-(std)\\(.*$',f$description),'statistic'] <- 'standard Deviation'
f[grep('^.*X$',f$description),'axis'] <- 'X'
f[grep('^.*Y$',f$description),'axis'] <- 'Y'
f[grep('^.*Z$',f$description),'axis'] <- 'Z'
f[grep('^.*(Acc).*$',f$description),'instrument'] <- 'Accelerometer'
f[grep('^.*(Gyro).*$',f$description),'instrument'] <- 'Gyroscope'
f[grep('^t.*$',f$description),'domain'] <- 'Time'
f[grep('^f.*$',f$description),'domain'] <- 'Frequency'
f[-grep('^.*(X|Y|Z)$',f$description),'axis'] <- 'Magnitude'
f[grep('^.*([Bb]ody).*$',f$description),'acceleration'] <- 'body'
f[grep('^.*([Gg]ravi).*$',f$description),'acceleration'] <- 'gravity'
f[grep('^.*([Jj]erk).*$',f$description),'jerk'] <- 'jerk'
f[-grep('^.*([Jj]erk).*$',f$description),'jerk'] <- 'nojerk'
f %<>% mutate_all(as.factor)

## Extracting mean of sets
melt_new_set <- melt(new_set,id=names(new_set)[c(1:3)],measure.vars=names(new_set)[-c(1:3)])
f$variabletype <- c(1:nrow(f))
merge_melt_new_set <- merge(melt_new_set,f,by.x = "variable",by.y = "name")
col_ord <-names(merge_melt_new_set)[c(2,3,13,5)]
merge_melt_new_set_ordered <- merge_melt_new_set[col_ord]
tidyData <- ddply(merge_melt_new_set_ordered,.(subject,activity,variabletype),summarize,mean=mean(value))
f<-f[names(f)[c(9,2,6,7,5,8,3,4)]]
names(f)[1]<-'id'
View(tidyData);View(f)
# writing data to file tidyData.csv and tidyData.txt
write.csv(arrange(merge(tidyData,f,by.x = "variabletype", by.y = "id")[,c(2,3,1,5,6,7,8,9,10,11,4)],subject,activity),'./Dataset/tidyData.csv')
write.table(arrange(merge(tidyData,f,by.x = "variabletype", by.y = "id")[,c(2,3,1,5,6,7,8,9,10,11,4)],subject,activity),'./Dataset/tidyData.txt')
