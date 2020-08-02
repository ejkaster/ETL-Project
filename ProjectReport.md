# Project Report

## Extract
### Data Sources
* https://www.kaggle.com/datafiniti/fast-food-restaurants
* https://www.kaggle.com/muonneutrino/us-census-demographic-data

Our data sources came from the two links above. We downloaded the csv files and only used the two files:
* Datafiniti_Fast_Food_Restaurants.csv
* acs2017_census_tract_data.csv

## Transform
The data was read and cleaned using python/pandas in Jupyter Notebook.

### Datafiniti_Fast_Food_Restaurants.csv
*Cleaning*
1. Dropped non-needed columns. 
2. Checked for non null values, there were none so no action done here.
3. Rename similar restaurant names. ex: SUBWAY and subway

*Transform*
Made a Restraurant Brand table and grabbed only the unique values to create a normalized table.

### acs2017_census_tract_data.csv
*Cleaning*
1. Checked for non null values and dropped them.
2. Dropped non-needed columns.
3. Aggregate data (grouby) state column.
4. Replaced Full State word with state abbreviation so we can connect with fast food restraurants table.

*Transform*
Made a State List table and grabbed only the unique values to create a normalized table

## Load
We loaded into postgres since we have a relational database.
