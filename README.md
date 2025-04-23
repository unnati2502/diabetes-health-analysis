# 🩺 Diabetes Health Indicator Analysis

This project explores predictors of diabetes using the BRFSS 2015 dataset.

## 📂 Contents

- `data/`: Raw BRFSS CSV files
- `outputs/`: Cleaned datasets, model summaries
- `plots/`: EDA and model visualizations
- `report.Rmd`: Report for binary classification
- `report1.Rmd`: Report for multiclass classification

## 📈 Methods

- Logistic regression (binary)
- Multinomial logistic regression (multiclass)
- p-value significance testing
- Exploratory visualizations

## 📊 Tools

- R, RMarkdown, tidyverse, nnet
# 📄 Report: Health Trend Analysis for Diabetes Prediction

**Author**: Unnati Agrawal  

---

## 🧭 Objective

This project aimed to analyze health indicators from the 2015 Behavioral Risk Factor Surveillance System (BRFSS) dataset to identify key predictors of diabetes. Two different datasets were explored:

- **Binary Classification Dataset**: `diabetes_binary_health_indicators_BRFSS2015.csv`  
- **Multiclass Classification Dataset**: `diabetes_012_health_indicators_BRFSS2015.csv`  

The first focused on whether a respondent had diabetes (yes/no), while the second included three categories: no diabetes, prediabetes, and diabetes.

---

## 📊 Approach

### 1. Data Preparation  
Each dataset was cleaned using the `janitor` and `tidyverse` libraries in R. Column names were standardized, and the target variable was converted to a factor for proper analysis and modeling.

### 2. Exploratory Data Analysis  
Visualizations were used to explore the distribution of Body Mass Index (BMI), self-reported general health, and other variables across diabetes status categories. The class distribution was also inspected, highlighting class imbalance in the binary dataset and the proportion of prediabetes cases in the multiclass version.

### 3. Modeling

#### Binary Dataset  
A logistic regression model was used to predict diabetes status (`0` or `1`) using:

- BMI  
- High blood pressure  
- General health rating  
- Age  
- Physical activity  

All predictors were statistically significant (p < 0.01). The model showed that:

- Higher BMI and age increase diabetes risk  
- High blood pressure is strongly associated with diabetes  
- Worse general health ratings correlate positively with diabetes  
- Physical activity slightly reduces the risk  

#### Multiclass Dataset  
A multinomial logistic regression model was used to classify respondents into:

- Class 0: No diabetes  
- Class 1: Prediabetes  
- Class 2: Diabetes  

Key findings include:

- BMI, age, high blood pressure, and general health were significant predictors for both prediabetes and diabetes  
- Physical activity was significant only in the diabetes group, suggesting a protective role  
- High blood pressure had the strongest effect in predicting full diabetes  

---

## 🔍 Key Results

| Predictor           | Consistently Significant? | Effect                                                  |
|---------------------|---------------------------|----------------------------------------------------------|
| **BMI**             | Yes                       | Higher BMI increases risk                                |
| **High BP**         | Yes                       | Strongest predictor of diabetes                          |
| **Age**             | Yes                       | Older individuals are at higher risk                     |
| **General Health**  | Yes                       | Worse health = higher diabetes likelihood                |
| **Physical Activity** | Mixed                   | Protective in binary model and for diabetes class only   |

---

## ✅ Conclusion

This analysis confirms that commonly tracked health metrics — such as BMI, blood pressure, and general health — are powerful predictors of diabetes. The results validate existing medical knowledge and underscore the importance of lifestyle factors in diabetes prevention.

By comparing binary and multiclass models, we gain additional insight into prediabetes as a distinct stage. The inclusion of physical activity as a protective factor further reinforces public health guidelines promoting regular exercise.

---

## 📌 Future Work

- Evaluate model performance with ROC curves, confusion matrices, and resampling techniques  
- Explore feature engineering and interaction terms  
- Train machine learning models (e.g., random forest or gradient boosting) for comparison 
