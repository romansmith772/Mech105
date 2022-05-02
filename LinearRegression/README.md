This Function (written in MATLAB):
* Filters outliers from your data set.
* Computs the linear regression on your filtered data set.
* Compute the  value from your filtered data and your linear regression function.
#Here is the function specification. Name: linearRegression
* Inputs: 
*x-values of the data set
*y-values of the data set
*Outputs:
*Filtered x-values (i.e. the input x-values but without the outlier points), sorted from smallest to largest
*Filtered y-valeus (i.e. the input y-values but without the outlier points), sorted from smallest to largest
*Slope from the linear regression (m in )
*Intercept from the linear regression (b in )
*Rsquared value

##Background on linear regression 

linear regression is a linear approach for modelling the relationship between a scalar response and one or more explanatory variables.Linear regression has many practical uses. Most applications fall into one of the following two broad categories:

* If the goal is prediction, forecasting, or error reduction,[clarification needed] linear regression can be used to fit a predictive model to an observed data set of values of the response and explanatory variables. After developing such a model, if additional values of the explanatory variables are collected without an accompanying response value, the fitted model can be used to make a prediction of the response.
* If the goal is to explain variation in the response variable that can be attributed to variation in the explanatory variables, linear regression analysis can be applied to quantify the strength of the relationship between the response and the explanatory variables, and in particular to determine whether some explanatory variables may have no linear relationship with the response at all, or to identify which subsets of explanatory variables may contain redundant information about the response.
