# Repository with all the files to create a manuscript for the life sciences using R
This repository is intended as an example on how {bookdown} and other packages can be used to create a manuscript that is reproducible. 
It also includes an example R script to create a composite figure that combines images  (in PNG format) and the output of data analysis.

# How to use it

The best way to get this repository is to fork it from GitHub. In that way all the directories and files will be copied exactly. 
This work was created using R. Therefore, you need to install the latest version of R. Additionally, it is recommended that and IDE such as RStudio is installed as well. Directions to install R and RStudio can be found [here](https://rstudio-education.github.io/hopr/starting.html). <br>

After installing R and RStudio, you need to install the {bookdown} and {tinytex} (a LaTeX distribution) packages in order to be able to create the PDF output. To install `bookdown`, you only need to run the following command in the Console in RStudio: `install.packages("bookdown")`. <br>
Instructions to install {tinytex} can be found [here](https://yihui.org/tinytex/). Note that you have to install the package and then run the command `install_tinytex()` to make it work.

All the required libraries to run the code and create the manuscript can be found in the first code chunk in `Complete_paper.Rmd` (which calls all the files in `sections` to generate the main manuscript). If using RStudio, the first time you open `Complete_paper.Rmd` you should automatically receive a warning about the missing packages that need to be installed; you can choose to install all the missing packages then.

If you have any questions feel free to send me an email: ariel.mundo.ortiz@umontreal.ca
