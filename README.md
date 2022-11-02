# capstone_project

Link to Project Outline Google Drive https://docs.google.com/document/d/1ZsROYre1mGJZ1bcuoWHezt7zbeNrAfOq_PrLy90I6GE/edit?usp=sharing ; will be deleted after completion of project

Link to Google Slides presentation (including outline for dashboard) https://docs.google.com/presentation/d/1pk2vo9F5P8zRDAE08-awe8mJJhPhlngZq-S5-RuwvW4/edit?usp=sharing

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

### Data Outline 

Crime (https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-Present/ijzp-q8t2)

Columns 
* Zip Code (developed by Karla)
* Latitude 
* Longitude
* Primary Type of Crime
    * Crime GPA (average of the binned description)
* FBI Codes

Notes: reduced the data here by 1.1% due to lack of Latitude and Longitude data 
Initial rows of data: 110,952 
Current rows of data: 109,731

Chicago Population Counts (https://data.cityofchicago.org/Health-Human-Services/Chicago-Population-Counts/85cm-7uqa/data)

Columns 

* Zip code 
* Total Population 
    

Chipotle Locations (https://www.kaggle.com/datasets/jeffreybraun/chipotle-locations)

Columns 

* Zip Code (developed by Karla)
* Address
* Lat 
* Lng 

Using Python to convert latitude and longitude from Chipotle data into zip codes in order to link to population and crime data. 

## Database Deliverable

### Check main branch

## Machine Learning Deliverable 

#### Description of preliminary data preprocessing
*	In our preprocessing, the only thing we changed was converting ‘Arrest’ and ‘Domestic’ columns into ones and zeros and not encoding the other ‘object’ type columns. In our csv file, we also adjusted the ‘Safety’ ratings by increasing range of ‘safe’ including misdemeanors (rankings of 3 or below).
#### Description of preliminary feature engineering and preliminary feature selection, including their decision-making process 
*	Because we introduced our own ranking system, we determined that encoding our dataset was not necessary. We also used StandardScaler to normalize the data. For our feature selection, we filtered out more unnecessary columns. Specifically, we removed, ‘Population’, ‘Latitude’, ‘Longitude’, and ‘Ward’. 
### Description of how data was split into training and testing sets 
*	In our original model, we split the dataset using the default settings of 75% training and 25% testing. In our neural network, we split our dataset into 70% training and 30% testing. We also included a Shuffle parameter data to address the imbalance of safe/unsafe.
#### Explanation of model choice, including limitations and benefits. 
*	We changed from supervised machine learning models to a deep neural network.
*	The main benefits of neural network are that it is flexible and can be used for both regression and classification problems and works best with lot of data points.
*	One problem of neural network is that it is prone to overfitting. Adding too much nodes and hidden layer will overtrain our model. Additionally, is is computationally very expensive and time consuming to train models.
#### Description of how they have trained the model thus far, and any additional training that will take place
*	In our first hidden layer we added two to three times the number of nodes as input features. With six input features, we put 15 nodes in the first hidden layer and 10 layers in the second hidden layer. Additionally, we added a dropout layer to prevent overfitting. In our hidden layers we also using ‘relu’ activation function and ‘sigmoid’ activation function in our output layer. These activation functions were used because they are commonly used in classification problems. To train the model, we increased the batch size during the fitting process to hyper train our model and then lowered it at our final training. Finally, we lowered the epoch from 100 to 50.
#### Description of current accuracy score Additionally, the model obviously addresses the question or problem the team is solving.
*	With the deep neural network model, we have an accuracy of 99.8%. Our model predicts whether the presence of chipotle is determined by crime and population demographic data.


