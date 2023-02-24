# Load the dotenv library, which reads the .env file in the same directory as 
# this script and loads the variables into this environment
library('dotenv')

# This forces new values from the .env file to be load. If you made changes and
# are not seeing them, re-run this command.
load_dot_env()


# get the value of a variable named 'csv_data_path' from the system environment
csv_data_path <- Sys.getenv("csv_data_path")

# get csv data using the path value from the previous step. This is typically
# where you would see a path like "C:\Users\mmagana\Documents\r-proj\my.csv"
# and you would have to edit the file if you ran the script on a machine with
# a different path
csv_data <- read.csv(csv_data_path)

# display the CSV data
head(csv_data)