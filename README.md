# Final Project

## **Our Topic:** 

Austin Housing Market Predictions

## **Reason the topic was selected:**

Austin, Texas has been the America's hottest housing market in 2020 - 21. The growing high-tech employment from companies like Apple, Tesla, Oracle and other start-ups are causing home sales and prices in the Austin real estate market to jump. Austin is located in the Hill Country region of Central Texas, surrounded by lakes and rivers, including the Colorado River. Austin’s booming job market, beautiful weather, scenic views, plentiful nightlife options, diverse dining scene and outdoor experiences are some of the reasons why professionals are flocking to the capital city of Texas.

Also, majority of our team-mates are from Austin and others have shown interest in analyzing the real estate trends in Austin. Hence, we chose this interesting topic for analysis.

## **Description of the source of data:**

The dataset we chose is on Kaggle. Below is the link for the same:
https://www.kaggle.com/ericpierce/austinhousingprices

The dataset is 2GB in size. 

It has 15171 rows and 47 columns including home images.

## **Questions we hope to answer with dataset available:**

1. Analyze how the Austin housing market has changed over the years. 

2. Which cities/suburubs in and around Austin are fastest growing and popular with respect to real estate?

3. What factors majorly influence the increase in housing prices (like schools, population, square footage of the house, built year etc)

## **Team Communication:**

### **Team Members:**

1. Brian Umlang

1. Kathryn Kane

1. Ramakrishna Vadla

1. Laharika Pochampalli

1. Shireen Kahlon

### **E-Meet Tools:**

1. Our team is making use of the most of the time in the virtual and required ZOOM classes.

2. We also have a chat group on SLACK and on WHATSAPP so that we are all reachable in offline hours too.

3. We have also created GOOGLE DOCUMENTs and shared across our team to document brainstorming ideas, roles, suggestions, links to research etc.
      
## **Technologies**

### **Data Cleaning and Analysis:**

We are planning to import pandas into python to clean the data we will be using for our analysis

### **Database storage:**

We are using Postgres SQL to host the database and will be providing a file with the necessary code to create the database. 
  
### **Machine Learning:**
SciKitLearn is the ML library we'll be using to perform a linear regression on our data. 
	
### **Dashboard:**
We are planning to use tableau to create our dashboards. 

## **Database**
 
The ERD, as shown below, depicts the relationships between tables within the SQL database. For this segment of the project, the tables are connected through the zpid, or more commonly known as the Zillow ID, column. The features and amenities tables are connected with the price table as often, people decide on what amenities and add-ons they would like based on the price, rather than the location. The schools table is linked to the location as the schools directly mentions the location by including columns such as 'avgSchoolDistance'. The tables are all linked in some shape or form to each other. The database is connected to the machine learning model in order to make predictions based on the data available.

![ERD](https://github.com/LaharikaSCU/Austin_Project/blob/main/Images/ERD.png)


### **ML Model:**

Following are the steps thats been performed for predicting the house price in Austin Area.

* Drop the following columns as they are not helpful for prediction

    1. homeImage.
    1. numOfPhotos.
    1. numPriceChanges.
    1. description.
    1. streetAddress.
    1. latitude.
    1. longitude.
    1. latestPriceSource.

Scatter plot between Living Area (sqft) vs SalePrice:

![01_scatterplot](https://user-images.githubusercontent.com/8316473/119210834-284c6500-ba74-11eb-8a8f-5f1dc3cbc0ca.PNG)

Linear Regression for the house price prediction:

![02_linear_regression_model](https://user-images.githubusercontent.com/8316473/119210840-3601ea80-ba74-11eb-8af2-d0ae1cb1c2b3.PNG)

Scatter plot between Year Built vs SalePrice:

![03_ScatterPlot-YearBuilt-vs-SalesPrice](https://user-images.githubusercontent.com/8316473/119240546-d825df00-bb15-11eb-82b3-5053c72ddbc9.PNG)

Linear Model on Year Built and House Price Prediction:

![04_LinearModel-YearBuilt-vs-SalesPrice](https://user-images.githubusercontent.com/8316473/119240561-02779c80-bb16-11eb-93de-75da2ea4f856.PNG)

Correlation Matrix:


### **Summary:**

1. Using Linear Regression ML, the data points are not along the linear line, so it's very hard to predict the house price using the linear regression using the Living Area.
1. On a second thought used Year Built instead of the Living Area, same results hard to predict the House Price using Linear Regression.
1. Added the correlation Matrix which helps to find out which Features are helpful effecting the house prices.


Need to use other Model like log Regression or RandomForest Regression to predict housing price.
