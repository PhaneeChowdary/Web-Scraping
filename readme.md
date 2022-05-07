# Web Scraping using R Language. 

Collecting crypto currency data from www.tradingview.com website

## Installation    

- Packages need to be installed to run this project.

```bash
  install.packages("flexdashboard", type = "source")
  install.packages('rvest')
  install.packages('tidyverse')
  install.packages('stringr')
```


## Process

- Import all necessary dependencies.
- Scrape the data from website.
- Convert it into a dataframe.
- Remove the special characters from the table.
- Check data type of each column and perform type conversion if needed.
- Rename the column names.
- Save the dataframe to a CSV file.
