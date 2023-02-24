# R-env  

Using environment variables to keep system specific paths and other information 
out of your code.  

# Installation  

Follow the steps below to install this example project on your system.  


1. Download this repo to you computer by cloning it or downloading the `.zip`
file from Github.
2. Visit https://people.sc.fsu.edu/~jburkardt/data/csv/csv.html and download any
of the sample `.csv` files to you computer. Note the location of your download.
3. Find the `r-env.Rproj` file in this repo and open it in RStudio
4. In the 'Files' pane of RStudio, find the 'More' button with the gear icon
and select the"Show hidden files" option. You will now see the `.env.example` file.
5. Open the `.env.example` file in RStudio, then select `File > Save As...`
from the file menu. Save the file with the new name `.env` in the same directory
as `.env.example`
6. Open the new `.env` file if it's not already open and make the follow changes:
   1. Edit the line that says `csv_data_path=""` to have the full path to the 
`.csv` you downloaded in step 2.
Example: `csv_data_path="C:/Users/mmagana/Downloads/hurricanes.csv"`
   2. Save the `.env` file with your modifications.
7. Open the file `myscript.R` in RStudio
  1. When opening the file, you should be prompted that there are missing packages
for the file. Select the option to install the missing packages.
  2. If you do not see this prompt for some reason, alternatively run the 
  `install.R` file to install all necessary packages.
8. Use `Ctrl + A` on your keyboard to select the entire contents of the `myscript.R` file,
then use the "Run" button or `Ctrl + Enter` to run the selected code.
9. You will see the output of the `head()` function from the `.csv` you downloaded.

# Who cares?  

Why bother with this example? You already know how to edit the file path in 
your source code, so why do all this?  

Notice for this exercise that you were able to display the contents of a `.csv`
file without modifying any source code. Also notice that I did not
know which `.csv` file you would download, which folder you would download it 
to, or which computer you would be using (I made this example on a Linux machine). If you cloned this repo using `git clone`, with the `myscript.R` file open and selected go to `Tools > Version Control > Diff "myscript.R"`. The diff tool shows that no changes have been made to the code. 

This means that the code can be run on any machine (computer or server) without
modifications, so it's much easier to collaborate on complicated projects.  

Imagine your colleague is stuck on their big, fat, complicated project, and they 
need help. You can download their code and data files to your machine and run 
them without modifying the code that is being tracked by github. If during your 
review you find a bug in their code, you can now create a new branch,
make your modifications to correct the bug and submit it to them. If you were
editing the paths in a source controlled file, it would be a nightmare to submit
only the bug correcting changes and not your path changes (which wouldn't even
work on the author's machine). **This is how you go from programming by yourself
to programming collaboratively**. This is how you go from your little world to 
open science. This is why Github has been so successful: it allows you to 
program with peers instead of by yourself.  

# File structure  

Here is a breakdown of the files in the repo and what they do.  

  - `.env.example` - all repos with a `.env` file should include this file, which will
show the variables needed to run your script. In the case of this example, the
`csv_data_path` variable is required to run the script, so it is included in the example file.
  - `.gitignore` - defines files that will not be included in source control (ignored).
This file should ALWAYS include `.env` so that it is not accidentally committed to source
control. The point is to keep this system specific information on the machine that is running
the code, NOT source control (aka github).
  - `myscript.R` - Loads CSV data without defining the path to the CSV file in its own code.
  - `README.md` - Always include "Installation" instructions, telling users to copy the
`.env.example` file to `.env` and modifying the values. You should also include information about
each value and its format. See example documentation below.  

# Example .env documentation  

You should always include documentation in your readme file defining each variable of your `.env`
file and its expected value/format. Include examples to clarify your expectations.

  - `csv_data_path` - The full path to the CSV data that will be loaded as an example. Example:
`C:/Users/mmagana/Downloads/addresses.csv`
