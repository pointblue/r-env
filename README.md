# R-env  

Using environment variables to keep system specific path and other information 
out of your code.  

# Installation  

Follow the steps below to install this example project on your system.  

1. Copy the `.env.example` file and paste it in the same folder with the new name
`.env`
2. Edit the `.env` file and make the following changes:
   1. Edit the line that says `message=""` to have any arbitrary message between the
double quote (`"`) characters. Example: `message="Hello, world!"`.
   2. Edit the line that says `csv_data_path=""` to have the full path to the `mydata.csv`
file in the repo. Example: `csv_data_path="C:/Users/mmagana/Downloads/r-env/mydata.csv"`
   3. Save the `.env` file with your modifications.
3. Run the script in this repo via command line as: `Rscript myscript.R`
4. You should see the value set for `message` in your command line output. You should
also see the data output from the CSV file.

# File structure  

Here is a breakdown of the files in the repo and what they do.  

  - `.env.example` - all repos with a `.env` file should include this file, which will
show the variables needed to run your script. In the case of this example, the
`message` and `csv_data_path` variables are required to run the script, so they are
included in the example file.
  - `.gitignore` - defines files that will not be included in source control (ignored).
This file should ALWAYS include `.env` so that it is not accidentally committed to source
control. The point is to keep this system specific information on the machine that is running
the code, NOT source control (aka github).
  - `mydata.csv` - An example CSV file with nonsense data.
  - `myscript.R` - Loads CSV data without defining the path to the CSV file in its own code.
  - `README.md` - Always include "Installation" instructions, telling users to copy the
`.env.example` file to `.env` and modifying the values. You should also include information about
each value and its format. See example documentation below.  

# Example .env documentation  

You should always include documentation in your readme file defining each variable of your `.env`
file and its expected value/format. Include examples to clarify your expectations.

  - `message` - An arbitrary message as a plain text string. Will be displayed to the user as an
example. Example: `Howdy folks!`
  - `csv_data_path` - The full path to the CSV data that will be loaded as an example. Example:
`C:\Users\mmagana\Downloads\r-env\mydata.csv`