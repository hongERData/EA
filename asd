Shapely Value Calculation:

Calculates for a single feature
two inputs: Model, and single datapoint 


The calculation is then done on all subset of the feature space 


We permutate the performance of all subset of features and calculate the marginal differences
depending on the number of features that are being marginally calculated, it is then weight accordingly 


Shapely value are calculated on a feature by feature bases. 

The SHAP value for a feature in a given data point is the difference between the expected model output and the output when that feature is excluded, averaged over all possible subsets of features. This means we are finding the difference in performance of our model for a single data point across the permutation and combination of the whole feature space. 

Summary plot: This plot provides a summary of the SHAP values for each feature in the data set, sorted by their importance in the model. The plot displays a horizontal bar for each feature, with the length of the bar representing the magnitude of the SHAP value. The plot also includes a color scale that indicates the direction of the feature's effect on the model output. Red bars indicate that high feature values are associated with high model output, while blue bars indicate the opposite. This plot helps to identify which features are most important for the model's predictions and how they influence the output.

Dependence plot: This plot shows the relationship between the value of a particular feature and the corresponding SHAP value. The plot displays a scatter plot of the feature values against their SHAP values, with a vertical line indicating the average SHAP value for the data set. This plot helps to identify how a particular feature affects the model output and whether its effect is linear or non-linear.

Force plot: This plot shows the SHAP values for each feature in a particular data point, displayed as arrows that indicate the direction and magnitude of the feature's effect on the model output. The plot also includes a base value, which is the average model output for the data set, and a prediction value, which is the model output for the selected data point. This plot helps to explain how the model arrived at a particular prediction for a given data point and how each feature contributed to that prediction.

Interaction plot: This plot shows the interaction between two features and their corresponding SHAP values. The plot displays a scatter plot of one feature against another, with the color of each point indicating the magnitude of the SHAP value. The plot also includes a line that shows the relationship between the two features when all other features are held constant. This plot helps to identify whether two features interact with each other and how that interaction affects the model output.


A waterfall plot is a type of visualization that shows how a set of features contribute to the output of a machine learning model. It is commonly used in conjunction with SHAP (SHapley Additive exPlanations) values to help explain the model's predictions. Here is how to interpret a waterfall plot:

Starting point: The starting point of the waterfall plot is the base value, which is the average output of the model for the entire dataset. This is usually represented by a horizontal line at the bottom of the plot.

Feature contributions: The next set of bars in the waterfall plot represent the contribution of each individual feature to the model's output. Each bar can be positive or negative, and the length of the bar represents the magnitude of the feature's contribution. A positive bar indicates that the feature increased the model output, while a negative bar indicates that the feature decreased the model output.

Total contribution: The total contribution of a set of features is the sum of the individual feature contributions. This is represented by a vertical line that connects the end of one bar to the start of the next. The length of the vertical line represents the total contribution of the set of features.

Final prediction: The final bar in the waterfall plot represents the final prediction of the model for the given data point. This is the sum of the base value and the total contributions of all the features. The length of the bar represents the model's final prediction.

Overall, the waterfall plot helps to explain the model's prediction by showing how each feature contributes to the final output. It helps to identify which features had the largest impact on the prediction and how they affected the output. Additionally, the waterfall plot can be used to compare the relative importance of different sets of features in the model, and to identify which features had the most significant impact on the prediction.


