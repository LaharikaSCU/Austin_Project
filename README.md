# Final Project

## **Our Topic:** 

Austin Housing Market Predictions

## **Reason the topic was selected:**

Austin, Texas was America's hottest housing market in 2020 - 21. The growing high-tech employment from companies like Apple, Tesla, Oracle and other start-ups are causing home sales and prices in the Austin real estate market to jump. Austin is located in the Hill Country region of Central Texas, surrounded by lakes and rivers, including the Colorado River. Austin’s booming job market, beautiful weather, scenic views, plentiful nightlife options, diverse dining scene and outdoor experiences are some of the reasons why professionals are flocking to the capital city of Texas.

Additionally the majority of our team-mates are from Austin and others have shown interest in analyzing the real estate trends in Austin. Hence, we chose this interesting topic for analysis.

## **Description of the source of data:**

* The dataset we chose is on Kaggle. Below is the link for the same:
https://www.kaggle.com/ericpierce/austinhousingprices

* The dataset is 2GB in size. 

* It has 15171 rows and 47 columns including home images.

## **Questions we hope to answer with dataset available:**

1. Analyze how the Austin housing market has changed over the years. 

2. Which cities/suburbs in and around Austin are fastest growing and popular with respect to real estate?

3. What factors influence the increase in housing prices (like schools, population, square footage of the house, built year etc)?

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

We are using Postgres SQL to host the database and will be providing a file with the necessary code to create the database. SQLAlchemy will be used to create a connection from the database into Python.
  
### **Machine Learning:**
SciKitLearn is the ML library we'll be using to perform linear regression and gradient boost.

### **Visualizations**
Seaborn and Matplotlib are used to create visualizations of how different features impact the predictions and patterns in the machine learning model.
	
### **Dashboard:**
We are planning to use tableau to create our dashboards. 

## **Database**
 
The ERD, as shown below, depicts the relationships between tables within the SQL database. For this segment of the project, the tables are connected through the zpid, or more commonly known as the Zillow ID, column. The features and amenities tables are connected with the price table as often, people decide on what amenities and add-ons they would like based on the price, rather than the location. The schools table is linked to the location as the schools directly mentions the location by including columns such as 'avgSchoolDistance'. The tables are all linked in some shape or form to each other. The database is connected to the machine learning model in order to make predictions based on the data available.

![ERD](https://github.com/LaharikaSCU/Austin_Project/blob/lpochampalli/segment2/Images/AHP_ERD.png)


### **ML Model:**

Following are the steps thats been performed for predicting the house price in Austin Area.

Following are the steps thats been performed for predicting the house price in Austin Area.

* Drop the following columns as they are not helpful for prediction

    1. homeImage.				2. numOfPhotos.				3. numPriceChanges.
    4. description.				5. streetAddress.			6. latitude.
	7. longitude.				8. latestPriceSource.

Scatter plot between Living Area (sqft) vs SalePrice:

![01_scatterplot](https://user-images.githubusercontent.com/8316473/119210834-284c6500-ba74-11eb-8a8f-5f1dc3cbc0ca.PNG)

Linear Regression for the house price prediction:

![02_linear_regression_model](https://user-images.githubusercontent.com/8316473/119210840-3601ea80-ba74-11eb-8af2-d0ae1cb1c2b3.PNG)

Scatter plot between Year Built vs SalePrice:

![03_ScatterPlot-YearBuilt-vs-SalesPrice](https://user-images.githubusercontent.com/8316473/119240546-d825df00-bb15-11eb-82b3-5053c72ddbc9.PNG)

Linear Model on Year Built and House Price Prediction:

![04_LinearModel-YearBuilt-vs-SalesPrice](https://user-images.githubusercontent.com/8316473/119240561-02779c80-bb16-11eb-93de-75da2ea4f856.PNG)

Correlation Matrix:
![05_correlation-matrix](https://user-images.githubusercontent.com/8316473/119270446-55a72900-bbc2-11eb-92ef-3069e44f8f10.PNG)



### **Choice of Models:** 
We have used two models for predicting the Austin Sale Price.
1. Linear Regression		2. Gradient Boost Regression

#### **Linear Regression:** 
Linear regression models is mainly used when their is a relationship between a continuous dependent variable (Y) and one or more independent variables X and they are linear.
Linear Regression models can be classified into two main types:
##### 1. Simple Regression
     Y = bX+a 
	 
	 Y' -> predicted value 
	 a  -> intercept (estimated regression)
	 X  -> independent variable
	 b  -> coefficient 
	
##### 2. Multivariable Regression

	Y(x1, x2, x3) =w1x1 + w2x2 + w3x3 +.... WnXn + w0
	
In both the models we calculate the cost function which is Mean Square Error (MSE), this helps to find how well the model is performing in predicting the values.
If the MSE is high then the model is performing very bad. Also if the data is very baised then the definition 

<b>Advantages: </b>
Linear Regression fits linearly separable datasets almost perfectly and is often used to find the nature of the relationship between variables.

<b>Limiations:</b>
Underfitting: A situation that arises when machine learning model fails to capture the data properly. 
Sensitive to outliers: Outliers of a dataset are anomalies or extreme values that deviate from the other data points of the distribution. Data outliers can damage the performance. 
One of most important data assumption is each variable is independent of each other and hence any multicollinearity must be removed before applying linear regression.

#### **Gradient Boost Regression (GBR):**
Boosting is a machine learning way of combining multiple simple models into a single composite model, also called as additive model, since simple models are added one at a time keeping the number
of trees in the model unchanged. As we combine more and more simple models the  model becomes a strong predictor.
Gradient Boosting comes from a fact that alogrithm uses gradient descent to minimize the loss. Here also we calculate the residuals (difference between the actual known target value and the predictor value).
The residual came from a weaker model will be input the next model , this process iterative until the model predicts the correct value.
High Level Steps thats followed while implementing GBR:
1. Selet a weak learner.
2. Additive model.
3. Define a loss function (residuals)
4. Minimize the loss function.

Few important parameters of GBR:
Number of Estimators(n_estimators): number of bossting stages to be performed by the model. Default value 100 
Maximum Depth (max_depth): Default value is 3 and optional paremeters (max depth of the decision trees)
Learning Rate (learning_rate): default value is 0.1, optional parameter. this is a hyper parameter which determines the step size at each iteration while moving towards a minimum of a loss function.
Criterion (criterion): default value is friedman_mse , optional parameter, used to measure the quality of a split for decision tree.
Number of Iteration no change(n_iter_no-Change): Defualt is none, optional parameter. This parameter is used to terminate training when vlaidation score is not improving with further iteration.

<b> Advantages of Gradient Boost Regression:</b>
1. Better accuracy
1. Less Pre-Processing
1. Higher Flexibility
1. Missing Data

### **Feature Engineer**:
1. Dropped independent categorical variables (columns) which are not affecting the Sale Price.
1. Converted Sales Date into numerical variable by making transforming the date into  new construction vs the Resale houses like if anything greater than 2020 is new (1) else old (0). 
1. Similarly converted the each city to numberical variable each city is a column which takes one of the binary value.
1. Based on the Correlation Matrix we were able to limit the most independent variables which are affecting the Sale Price.

### **Results**:
Simple Linear Regression:  
	Using either Living Sqft or Year Built gave the model score equal to 1. Data can be biased, model prediction can be overfitting.
Gradient Boost Regression: 
	The model score is 0.6 based on the selected features.
	RMSE is 310772.55
	Even though the rmse is very high, when compared to the Sale Price prediction, the model is almost 5,0000 to 30,000 difference on most of the houses.
	

### **Summary:**

1. Using Linear Regression ML, the data points are not along the linear line, so it's very hard to predict the house price using the linear regression using the Living Area.
1. On a second thought used Year Built instead of the Living Area, same results hard to predict the House Price using Linear Regression.
1. Added the correlation Matrix which helps to find out which Features are helpful effecting the house prices.
1. Applied the Gradient Boost Regression ML , this model one of the best Additive Models along with the Random Forest Regression, based on the model score , will still prefer to perform Random Forest Regression if time permits.

### **Dashboard:**
There are three dashboards for our project. The locations dashboard portrays how the average housing price differs from Austin vs. suburbs. The second dashboard — the sales dashboard — shows how the average housing price increases or decreases in each year from 2019 until 2021 and in each general month. Finally, the price dashboard portrays how the living area square feet, number of bathrooms, and the average nearby school ratings affect the housing prices. 

The dashboards can be seen below:

* Location Dashboard: 
https://public.tableau.com/app/profile/shireen.kahlon/viz/austinHousingMarket/locationDashboard


* Sales Dashboard:
https://public.tableau.com/app/profile/shireen.kahlon/viz/austinHousingMarket/salesDashboard

* Price Dashboard:
https://public.tableau.com/app/profile/shireen.kahlon/viz/austinHousingMarket/priceDashboard


### **Presentation Slides**
https://docs.google.com/presentation/d/1Q65tIs-eJl6yF4WKYmtobcKg9m11rnzN_qmfhjeljio/edit#slide=id.p

