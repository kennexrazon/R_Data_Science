
features<-read.table("./UCI HAR Dataset/features.txt",sep=" ")
label<-gsub(" ", "", features[,2]) # remove spaces
label<-gsub(",","", label) # remove commas

activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt",sep=" ")
activity_labels <- activity_labels[,2]

testPath<-"./UCI HAR Dataset/test/"
trainPath<-"./UCI HAR Dataset/train/"

testFiles<-list.files(path = testPath)
trainFiles<-list.files(path = trainPath)

## find all that end in .txt
testFiles<-testFiles[grep("\\.txt$",testFiles,perl=TRUE)]
trainFiles<-trainFiles[grep("\\.txt$",trainFiles,perl=TRUE)]

## load all the files needed for merging
merge_subject_activity_data<-function(path_to_files,file_names,column_names){
	path<-path_to_files
	testFiles <- file_names
	fileName<-paste(path,testFiles[1],sep="")
	test1<- read.table(fileName, fill = TRUE)
	colnames(test1)[1] <- "subject"
	fileName<-paste(path,testFiles[2],sep="")
	test2<- read.table(fileName, fill = TRUE)
	colnames(test2)<-column_names
	fileName<-paste(path,testFiles[3],sep="")
	test3<- read.table(fileName, fill = TRUE)
	colnames(test3)[1] <- "activity"

	merged_data<-cbind(test1,test3,test2)
	return(merged_data)
}
test <- merge_subject_activity_data(testPath,testFiles,label)
train <- merge_subject_activity_data(trainPath,trainFiles,label)

data1 <- rbind(test,train)

# find all mean or std colnames
data2<-data1[colnames(data1)[grep("(.*(mean|std).*)|activity|subject",colnames(data1),perl=TRUE)]]

data2$activity <- factor(data2$activity)
levels(data2$activity) <- levels(activity_labels)

library(dplyr)
data3<-data2 %>% group_by(subject,activity) %>% summarise_each(funs(mean))

data3<-data.frame(data3)
write.table(data3,"subject_activity_mean.txt",row.name=FALSE)







