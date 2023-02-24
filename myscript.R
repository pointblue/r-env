# Load the dotenv library, which reads the .env file in the same directory as this script and loads the variables into
# this environment
library('dotenv')

#
# Example using a plain string value from the .env file
#

# get the value of a variable named 'message' from the system environment
message <- Sys.getenv("message")

# show the value of the message
cat("The is the value from the .env file: ", message, "\n")


#
# Example using a path string to load CSV data without hard-coding the path
#


# get the value of a variable named 'csv_data_path' from the system environment
csv_data_path <- Sys.getenv("csv_data_path")

# get csv data using the path value from the previous step
csv_data <- read.csv(csv_data_path)

# display the CSV data
str(csv_data)