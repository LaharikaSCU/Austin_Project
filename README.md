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

Brian Umlang

Kathryn Kane

Krishna V

Laharika Pochampalli

Shireen Kahlon

### **E-Meet Tools:**

1. Our team is making use of the most of the time in the virtual and required ZOOM classes.

2. We also have a chat group on SLACK and on WHATSAPP so that we are all reachable in offline hours too.

3. We have also created GOOGLE DOCUMENTs and shared across our team to document brainstorming ideas, roles, suggestions, links to research etc.
      
## Technologies

### Data Cleaning and Analysis
We are planning to import pandas into python to clean the data we will be using for our analysis

### Database storage
We are using Postgres SQL to host the database and will be providing a file with the necessary code to create the database. 
  
### Machine Learning
SciKitLearn is the ML library we'll be using to perform a linear regression on our data. 
	
### Dashboard
We are planning to use tableau to create our dashboards. 

## Database 
The ERD depicts the relationships between tables within the SQL database. For this segment of the project, the tables are connected through the zpid, or more commonly known as the Zillow ID, column. The features and amenities tables are connected with the price table as often, people decide on what amenities and add-ons they would like based on the price, rather than the location. The schools table is linked to the location as the schools directly mentions the location by including columns such as 'avgSchoolDistance'. The tables are all linked in some shape or form to each other. The database is connected to the machine learning model in order to make predictions based on the data available.