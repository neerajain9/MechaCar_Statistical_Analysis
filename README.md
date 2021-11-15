# MechaCar_Statistical_Analysis
Module 15 Challenge

# Deliverable-1
## [Linear Regression to Predict MPG](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/Multi-Line%20Regression.png)

![](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/Multi-Line%20Regression.png?raw=true)

**Q.** Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

**A.** Vehicle weight and AWD capabilities provided a non-random amount of variance to the mpg values in the dataset.

#
**Q.** Is the slope of the linear model considered to be zero? Why or why not?

**A.** We can not consider the slope to be zero. Since this is a multiple line regression which uses multiple independent variables to account for parts of the total variance observed in the dependent variable.
#
**Q.** Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

**A.** This is not a effective representation. In this multi input analysis we utilized categorical data components which is a straight violation of our base assumptions i.e. 

1. The input data should be numerical & continous, and it should follow a linear pattern.
1. There should be a variability in the independent variables.

#
# Deliverable-2
## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### Analysis:
1. ### [Variance for total:](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/total%20summary.png) 
The variance of all manufacturing lots in total is 62.29 which doesn't meet the design specifications.

![](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/total%20summary.png?raw=true)

2. ### [Variance for each lot:](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/lot%20summary.png) 

Lot-3 exceeds the design specifications; 170.28, whereas Lot-1 (0.98) and Lot-2 (7.47) failed drastically to meet the design specifications.

![](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/lot%20summary.png?raw=true)


Overall, the production failed to meet the design specifications. Lot-3 exceeded the specifications is not a good sign either. Based on this limited analysis, we do not know if this is by chance random or we could reject the hypothesis.

#
# Deliverable-3
## T-Tests on Suspension Coils
1. ### [**All Manufacturing Lots Vs. Population:**](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/t-test_all-lots.png)

The p-value (0.06028) suggests that we do not have enough evidence to reject the hypothesis.

![](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/t-test_all-lots.png?raw=true)

#
2. ### [**Lot-1 Vs Population:**](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/t-test_Lot1.png) 

The p-value (1.0) suggests that we do not have enough evidence to reject the hypothesis. This means the means of the Lot-1 and the Population are the same.

![](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/t-test_Lot1.png?raw=true)

#
3. ### [**Lot-2 Vs Population:**](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/t-test_Lot2.png) 

The p-value (0.06072) suggests that we do not have enough evidence to reject the hypothesis.

![](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/t-test_Lot2.png?raw=true)

#
4. ### [**Lot-3 Vs Population:**](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/t-test_Lot3.png) 

The p-value (0.04168) suggests that we reject the hypothesis. i.e the means are statistically different. 

![](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/t-test_Lot3.png?raw=true)


#
# Deliverable-4
## Study Design: MechaCar vs Competition
The general consumers of automotives are more interested in a relaible vehicle with high safetly ratings that is cost-effective, low on maintenance, high fuel efficiency, and finally bring in reasonable horse power.

**Null Hypothesis:** The cars that are heavier has low mileage.

**Alternate Hypothesis:**
The heavier cars do not have low mileage.

**Hypothesis Test:** We are going to use "Vehicle Weight" to test our hypothesis.

**Type of test:** we will run regression test.

**Test Outcomes:** The p-value (0.531) is much higher than the alpha (0.05). This means we do not have enough evidence to reject our null hypothesis. In other words, the heavier cars does have low mileage.

**Conclusion of this analysis:** We think our heavier cars will [underperform](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/underperform.png) our competition in the similar weight class. We should focus more on the ligher cars to improve the mileage performace.

![](https://github.com/neerajain9/MechaCar_Statistical_Analysis/blob/Data-Science/Resources/underperform.png?raw=true)