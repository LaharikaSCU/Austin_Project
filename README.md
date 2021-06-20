# Final Project

## **Our Topic:** 

Austin Housing Market Predictions

## **Reason the topic was selected:**

Austin, Texas has been America's hottest housing market from 2020 - 21. The growing high-tech employment from companies like Apple, Tesla, Oracle and other start-ups are causing house sales and prices in the Austin real estate market to jump. Austin is located in the Hill Country region of Central Texas, surrounded by lakes and rivers — including the Colorado River. Austin’s booming job market, beautiful weather, scenic views, plentiful nightlife options, diverse dining scene, and outdoor experiences are some of the reasons why professionals are flocking to the capital city of Texas.

Additionally the majority of our teammates are from Austin and others have shown interest in analyzing the real estate trends in Austin. Hence, we chose this interesting topic for analysis.

## **Description of the source of data:**

* The dataset we chose is on Kaggle. Below is the link for the data:
https://www.kaggle.com/ericpierce/austinhousingprices

* The dataset came to be from a Northwestern student who's capstone project revolved around cleaning a dataset with over 700 columns. This dataset is the result of the student's project.

* The dataset is 2GB in size. 

* It has 15,171 rows and 47 columns including home images.

## **Questions we hope to answer with dataset available:**

1. Which cities/suburbs in and around Austin are the fastest growing in regards to real estate?

2. What factors influence the increase in housing prices (such as schools, population, square footage of the house, built year, etc.)?

3. How has the Austin housing market changed over the past three years?

## **Team Communication:**

### **Team Members:**

* Brian Umlang

* Kathryn Kane

* Ramakrishna Vadla

* Laharika Pochampalli

* Shireen Kahlon

### **E-Meet Tools:**

* Our team is making use of the most of the time in the virtual and required Zoom classes.

* We have a chat group on Slack and on WhatsApp so that we are all reachable in non-classtime hours as well.

* We created a Google Doc and shared it across our team to document brainstorming ideas, roles, suggestions, links to research etc.
      
## **Technologies**

### **Data Cleaning and Analysis:**

We imported pandas into python to clean the data for the analysis.

### **Database Storage:**

We used Postgre SQL to host the database; we provided a file with the necessary code to create the database. SQLAlchemy will be used to create a connection from the database into Python.
  
### **Machine Learning:**

SciKitLearn is the ML library we used to perform linear regression and gradient boost.

### **Visualizations**

Seaborn and Matplotlib were used to create visualizations of how different features impact the predictions and patterns in the ML model.
	
### **Dashboard:**

We used Tableau to create our visualization dashboards. 

## **Database**
 
The ERD, as shown below, depicts the relationships between tables within the SQL database. For this segment of the project, the tables are connected through the zpid, or more commonly known as the Zillow ID, column. The features and amenities tables are connected with the price table as often, people decide on what amenities and add-ons they would like based on the price, rather than the location. The schools table is linked to the location as the schools directly mentions the location by including columns such as 'avgSchoolDistance'. The tables are all linked in some shape or form to each other. The database is connected to the ML model in order to make predictions based on the data available.
<p>
<img src="https://github.com/LaharikaSCU/Austin_Project/blob/lpochampalli/segment2/Images/AHP_ERD.png" height="800" width="800"/>
<pr>

### **Machine learning model:**

Following are the steps thats been performed for predicting the house price in Austin Area.

* Drop the following columns as they are not helpful for prediction

	<table>
		<tbody>
			<tr><td>homeImage</td>
				<td>numOfPhotos</td>
				<td>numPriceChanges</td>
				<td>latestPriceSource</td>
			</tr>
			<tr><td>description</td>
			    <td>streetAddress</td>
				<td>latitude</td>
				<td>longitude</td>
			</tr>
		</tbody>
	</table>

#### **Analysis on Living Area (sqft) vs HousePrice:**

<table>
	<thead>
		<tr><th>Scatter plot</th>
			<th>Linear Regression predicting House Price</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><img src="https://user-images.githubusercontent.com/8316473/119210834-284c6500-ba74-11eb-8a8f-5f1dc3cbc0ca.PNG" width="400"/></td>
			<td><img src="https://user-images.githubusercontent.com/8316473/119210840-3601ea80-ba74-11eb-8af2-d0ae1cb1c2b3.PNG" width="375"/> </td>
		</tr>
	</tbody>
</table>

#### **Analysis on Year Built vs HousePrice:**

<table>
	<thead>
		<tr><th>Scatter plot</th>
			<th>Linear Regression predicting House Price</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><img src="https://user-images.githubusercontent.com/8316473/119240546-d825df00-bb15-11eb-82b3-5053c72ddbc9.PNG" width="400"/></td>
			<td><img src="https://user-images.githubusercontent.com/8316473/119240561-02779c80-bb16-11eb-93de-75da2ea4f856.PNG" width="400"/> </td>
		</tr>
	</tbody>
</table>

Correlation Matrix:
<p>
<img src="https://user-images.githubusercontent.com/8316473/119270446-55a72900-bbc2-11eb-92ef-3069e44f8f10.PNG" width"800" height="800" alt="05_correlation-matrix"></img>
</p>

### **Choice of Models:** 

We used two models for predicting the Austin Sale Price:

	1. Linear Regression.
	2. Gradient Boost Regression.
	

#### **Linear Regression:** 

Linear regression models are generally used when there is a relationship between a continuous dependent variable (the Y variable) and one or more independent variables (the X variable); the variables must be linear.
Linear Regression models can be classified into two main types:
<table>
	<thead>
		<th>Simple Linear Regression</th>
		<th>Multi Variable Linear Regression</th>
	</thead>
	<tbody>
	<tr>
	<td>
	<pre>
	 Y = bX+a 
	 Y' -> predicted value 
	 a  -> intercept (estimated regression)
	 X  -> independent variable
	 b  -> coefficient 
	</pre>
	</td>
	<td>
	<pre>
	Y(x1, x2, x3) = w1x1+w2x2+w3x3+.... WnXn + w0
	</pre>
	</td>
	</tr>
	</tbody>
</table>

In both the models we calculate the cost function which is the Mean Square Error (MSE), this helps to find how well the model is performing in predicting the values. If the MSE is high, then the model is not performing as expected. 

#### **<span style="color:blue">Advantages and Limitations of Linear Regression:</span>**

<table>
	<thead>
		<tr>
			<th>Advantages</th>
			<th>Limitations</th>
		</tr>
	</thead>
	<tbody>
		<tr><td>Linear Regression fits linearly separable datasets almost perfectly and is often used to find the nature of the relationship between variables.</td>
			 <td>Under Fitting: A situation arises when ML models fails to capture the data properly.</td>
		</tr>
		<tr><td></td>
			<td>Sensitive to Outliers: Outliers of dataset also called anomalies or extreme values that deviates from the linear points of the distributions.
				Dataoutliers can damage the performance.
			</td>
		</tr>
		<tr>
			<td></td>
			<td>Assumption: Each variable is independent of each other. Hence any multi-colinearity must be removed before applying linear regression.</td>
		</tr>
	</tbody>
	
</table>

#### **Gradient Boost Regression (GBR):**

Gradient boost regression is a form of ML that combines multiple simple models into a single composite model; it can also be referred to as an additive model. Since simple models are added one at a time, it keeps the number of trees in the model unchanged. As we combine more and more simple models the  model becomes a strong predictor. Gradient boosting comes from the fact that alogrithm use gradient descent to minimize the loss. In this scenario, we calculated the residuals (the difference between the actual known target value and the predictor value). The residual comes from a weaker model that will be input into the next model. It's an iterative process until the model predicts the correct value or when there's no change in the defined loss function.

High Level Steps thats followed while implementing GBR:
<pre>
1. Select a weak learner.
2. Additive model.
3. Define a loss function (residuals).
4. Minimize the loss function.
</pre>

Few important parameters of GBR:
<table>
	<thead>
		<tr>
			<th>Name of Parameter</th>
			<th>Description</th>
			<th>Default Values</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Number of Estimator</td>
			<td>number of bossting stages to be performed by the model</td>
			<td>100</td>
		</tr>
		<tr>
			<td>Maximum Depth (max_depth)</td>
			<td>Its optinal parameter, max depth of the decision trees
			<td>3</td>
		</tr>
		<tr>
			<td>Learning Rate (learning_rate)</td>
			<td>optional parameter. this is a hyper parameter which determines the step size at each iteration while moving towards a minimum of a loss function</td>
			<td>0.1</td>
		</tr>
		<tr>
			<td>Criterion (criterion)</td>
			<td>optional parameter, used to measure the quality of a split for decision tree</td>
			<td>friedman_mse</td>
		</tr>
		<tr>
			<td>Number of Iteration no change(n_iter_no-Change)</td>
			<td>optional parameter. This parameter is used to terminate training when vlaidation score is not improving with further iteration</td>
			<td>none</td>
		</tr>
	</tbody>
</table>


<b> Advantages of Gradient Boost Regression:</b>
<pre>
1. Better accuracy
2. Less Pre-Processing
3. Higher Flexibility
4. Missing Data
</pre>
### **Pre-processing**:
1. Filter the null values.
2. Drop the unwanted values.
3. Convert Sales Date into numerical variable by transforming the date into a boolean variable. (new construction vs the resale houses) For example, if anything greater than 2020 is new, it will be shown as a 1; if it is old, it will be shown as a 0. 

### **Feature Engineering**:

1. Dropped independent categorical variables (columns) which are not affecting the sale price.
1. Similarly converted each city to a numberical variable; each city is a column which takes a binary value.
1. Based on the correlation matrix, we were able to limit the number of independent variables which are affecting the sale price to six features.
1. Below are the six features that are used to apply on linear regression and gradient boost regression.
<pre>
	livingAreaSqft			numOfBathrooms		numOfBedrooms
	numOfHighSchools		avgSchoolRating		garageSpaces
</pre>

### **ML Results and Comparision of Linear Regression and Gradient Boost Regression**:

<table>
<thead>
	<tr>
		<th>Comparision Value</th>
		<th>Multivariate Linear Regression</th>
		<th>Gradient Boost Regression</th>
	</tr>
</thead>
<tbody>
	<tr>
		<td>Root Mean Square (rmse)</td>
		<td> 1.83</td>
		<td> 57957</td>
	</tr>
	<tr>
		<td>Prediction Score</td>
		<td> 1.00</td>
		<td> 0.98</td>
	</tr>
</tbody>
</table>

### **Summary:**

* We used simple linear regression ML — the data points are not along the linear line, so we concluded that it's very hard to predict the house price using linear regression involving living area.
* Afterwards, we used year built instead of the living area — the results were also hard to predict the house price using linear regression.
* The correlation matrix was added — it helped to find out which features are helpful to predict the house prices.
* Even tough the multivariate linear regression has a prediction score of 1 and the root mean square is less than 1, the model appears to be either biased or the new data contains more outliers or nulls. If either of these are the case, the model will not work properly.
* The gradient boost regression has a high root mean square error and prediction score. These observations indicate that we can use this model to predict the house price.

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




