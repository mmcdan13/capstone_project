# capstone_project

Link to Project Outline Google Drive https://docs.google.com/document/d/1ZsROYre1mGJZ1bcuoWHezt7zbeNrAfOq_PrLy90I6GE/edit?usp=sharing ; will be deleted after completion of project

Link to Google Slides presentation (including outline for dashboard) https://docs.google.com/presentation/d/1pk2vo9F5P8zRDAE08-awe8mJJhPhlngZq-S5-RuwvW4/edit?usp=sharing

Link to Tableau Dashboard: https://public.tableau.com/views/MetroChicagoChipotlevsCrime/MetroChicagoChipotlevs_Crime?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

## Project Overview

Topic: Are Chipotles in the Chicago, Illinois region located in "safe" neighborhoods based on zip code, and is crime data a good predictor of target locations for growth?

We are interested in whether Chipotles are located in "safe" neighborhoods because we are considering opening a Chipotle franchise and would like to make sure it is located in the area based on existing locations in Chicago,IL. We are using Chicago as our model city because it's the third largest city in the U.S.A., it has a diverse population, and large metropolitan and suburban areas.

We are hoping to answer:
1. How many Chipotle locations are in "safe" locations?
2. Based on zip code population and crime data, can we predict if the location is viable for a Chipotle location?


Sources of Data:

* Chipotle Locations (https://www.kaggle.com/datasets/jeffreybraun/chipotle-locations)
* Crime and Population Data (https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-Present/ijzp-q8t2)

### Group Dynamic

Communication Protocol:
* Group iMessage for daily touch bases
* Meetings Mondays, Tuesdays, Wednesdays, Thursdays at 7:00PM, adhoc as necessary 

Accountability:
* Each member has their own Github branch to track progress

### Structure 

Main Branch: 
- Resources
  -Data (CSVs)
- ReadMe
-.gitignore 
<<<<<<< HEAD

### Data Sources 

Crime Data  (https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-Present/ijzp-q8t2)

Columns 
* ID
* Case #
* Date
* Block (address by block)
* IUCR
* Primary Crime Type
* Description of Crime
* Location (Vehicle, Apartment, Street, Residence, etc.)
* Arrest Status
* Domestic Status
* Police Beat
* Police District
* Ward
* Community
* FBI Code
* XCoordinate
* Y Coordinate
* Year
* Last updated
* Latitude 
* Longitude
* Location(lat/long)

Chicago Population data 2020 (https://data.cityofchicago.org/Health-Human-Services/Chicago-Population-Counts/85cm-7uqa/data)

Columns 
* Zip code 
* Location (Lat/Long)
* City with State
* Population
* Population density/Sq.Mile
* National Ranking based on population
    

Chipotle Locations (https://www.kaggle.com/datasets/jeffreybraun/chipotle-locations)

Columns 
* Zip Code
* Address
* Lat
* Lng 

## Database Development

### Data Cleaning 
## Initial evaluations
  - Crime Data is for Chicago 2020 only with 100000 entires
  - A linkage/key is needed to link the crime and population data
    -  Linkage identified as Zip to Ward data
    -  Source: (https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Wards-Zipcodes/fcei-jacx)  
  - Chipotle Data needs zip split out from address field
## Cleaning Process

*Cleaning and intial joins to provide database framework completed in Python with Panda dataframes, and os for joins/merges.  Primary link/key identified as zip to bring the 4 databases together.
  - 2020-Crime
    - Initially eliminated all rows missing lat/lng and location (1.1%).  Noted Added rows back after changing primary key to ward to link to zip.
    - Created severity index for Primary Crime Types
       1-8 point scale consistent with Class X - Class 3 Felonies and Class A/1 to C/3 Misdemeanors. Level 8 represents highest severity crimes: murder, criminal crimes against children, Armed Robbery, Terrorist threats, and solicition for murder. Level 1 represents lowest severity misdemeanor offenses: petty theft, simple assult, evading police, vandalism, cyber bullying, minor possession, child welfare.
   

* Linkages/Merges completed in python:
  - 2020_Crime.csv to Ward_Zip.csv
  - Crime_Zip_df to Chicago_Population_by Zipcode_2020.csv
  - For intial model prototype database: .csv to New_Chipotle_Data

* Changes made for modeling purposes
  - Changed Arrest and Domestic columns from True/False to Binary 1/0
  - Changed Chipotle location in Zip from Yes to Binary 1/0
  - Converted National rank from # and the number rank to numeric only.

* Fields maintained for model: Zip, Ward, Primary_Type, Latitude and Longitude of incident, Arrest status (binary 1=yes), Domstic Status (binary 1=yes), Population, People/Sq.Mile, National_rank, chipotle (binary 1=yes), Safety - (1-3 ranking reflects safe, binary yes = 1) 
     
##
## Machine Learning Deliverable 
#### Description of preliminary feature engineering and preliminary feature selection, including their decision-making process 

* For our features we used all the columns after they were encoded and dropped the target column which was 'chipotle'.
 
#### Description of how data was split into training and testing sets 

* To split our data into training and testing sets, we used the train_test_split function from sklearn package. By default, the package splits the dataset into 75% training data and 25% testing data.

#### Explanation of model choice, including limitations and benefits

* For our model, we decided to use a supervised machine learning model with resampling and ensemble techniques.  

* In oversampling, its limitation is that the algorithm can be heavily influenced by outliers and lead to noisy data. With under-sampling, the it does not work with small dataset. To overcome this limitation, we used a technique that is a combination of oversampling and under-sampling techniques.  

* For ensemble technique the main benefit is that bias/variance can be reduced and most of the times thus the model is not underfitted/overfitted. However, this technique is also less interpretable so the output is hard to predict and explain.

## Database Deliverable

### RDS Database Created
![aws.png](Resources/aws.png)


### PostGres Connected Database
![pga.png](Resources/pga.png)










=======
>>>>>>> 2260bef2780bc3ddedcce34273054e990922d594
