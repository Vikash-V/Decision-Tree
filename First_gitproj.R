library(rpart)
library(rpart.plot)
library(party)
data("readingSkills")
?readingSkills
View(readingSkills)
attach(readingSkills)
dim(readingSkills)
data<-readingSkills
Tree1 <- ctree(nativeSpeaker ~., data = data)
Tree1
plot(Tree1)
str(readingSkills)

Tree2 <- rpart(nativeSpeaker ~., data = data)
rpart.plot(Tree2, cex = 0.8)

predict(Tree1, data)
tab<-table(predict(Tree1),data$nativeSpeaker)
accuracy = sum(diag(tab))/sum(tab)
accuracy
?readingSkills
