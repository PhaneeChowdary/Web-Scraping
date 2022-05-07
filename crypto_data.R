#Packages
library(rvest)
library(tidyverse)
library(stringr)

#Crytocurrency page path
url = read_html("https://www.tradingview.com/markets/cryptocurrencies/prices-all/")

#get cryptocurrency table from url
table = html_nodes(url, css = "table")

#Result is a list,so we must explicitly convert the result to a table or dataframe. 
crypto_df = html_table(table, fill = T) %>% as.data.frame()

#Rename every column
crypto_df = rename(crypto_df, 
                   Crypto_name = Var.1, 
                   Market_CAP = Var.2,
                   Fully_Diluted_MKT_CAP = Var.3,
                   Last = Var.4,
                   Avail_Coins = Var.5,
                   Total_Coins = Var.6,
                   Traded_Volume = Var.7,
                   Change = Var.8)

write.csv(crypto_df, "crypto.csv")
view(crypto_df)