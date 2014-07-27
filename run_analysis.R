# Download data to current dir
if (!file.exists("./data"))
    dir.create("./data")
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(url, destfile = "./data/UCI HAR Dataset.zip")
#unzip("./data/UCI HAR Dataset.zip", exdir = "./data")
path = "./data/UCI HAR Dataset/"

# Read raw data
features = read.csv(paste0(path, "features.txt"), sep = " ", header = FALSE, as.is = TRUE, 
    col.names = c("id", "name"))
activities = read.csv(paste0(path, "activity_labels.txt"), sep = " ", header = FALSE,
    col.names = c("id", "name"))

test_subject = read.csv(paste0(path, "test/subject_test.txt"), header = FALSE)
test_activity = read.csv(paste0(path, "test/y_test.txt"), header = FALSE)
test_data = read.csv(paste0(path, "test/X_test.txt"), sep = "", header = FALSE, as.is = TRUE)
 
train_subject = read.csv(paste0(path, "train/subject_train.txt"), header = FALSE)
train_activity = read.csv(paste0(path, "train/y_train.txt"), header = FALSE)
train_data = read.csv(paste0(path, "train/X_train.txt"), sep = "", header = FALSE, as.is = TRUE)

# 1. Merge data into one dataset
test_merged = cbind(test_subject, test_activity, test_data)
train_merged = cbind(train_subject, train_activity, train_data)
ds = rbind(test_merged, train_merged)

# Set labels
names(ds) = c("subject", "activity", features[, 2])

# 2. Extract measurements of mean and standard deviation
extractCols = c("subject", "activity", features[grep("-mean\\(\\)|-std\\(\\)", features[, 2]), 2])
ds = ds[, extractCols]

# Factor subjects
ds$subject = as.factor(ds$subject)

# 3. Assign descriptive activity names
ds$activity = factor(ds$activity, activities$id, labels = activities$name)

# 4. Clean-up data set labels
cleanNames = names(ds)
cleanNames = sub("^t", "Time", cleanNames)
cleanNames = sub("^f", "Frequency", cleanNames)
cleanNames = sub("-mean\\(\\)", "Mean", cleanNames)
cleanNames = sub("-std\\(\\)", "StdDev", cleanNames)
cleanNames = sub("-", "", cleanNames)
cleanNames = sub("Acc", "Accelerometer", cleanNames)
cleanNames = sub("Mag", "Magnitude", cleanNames)
cleanNames = sub("Gyro", "Gyroscope", cleanNames)
cleanNames = sub("(.*)Mean(.*)", "\\1\\2Mean", cleanNames)
cleanNames = sub("(.*)StdDev(.*)", "\\1\\2StdDev", cleanNames)
# Remove error in the labels
cleanNames = sub("BodyBody", "Body", cleanNames)
names(ds) = cleanNames

# 5. Create tidy dataset as average of all variables for each activity and subject
tidy = aggregate(. ~ (subject + activity), data = ds, FUN = mean)

# Save it to the file as CSV
write.csv(tidy, "tidy_data.csv", row.names = FALSE)
