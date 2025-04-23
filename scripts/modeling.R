# modeling.R

library(tidyverse)


df2 <- read_csv("outputs/cleaned_diabetes_data2.csv")

# Fit a logistic regression
model2 <- glm(diabetes_binary ~ bmi + high_bp + gen_hlth + age + phys_activity,
             data = df2, family = binomial)

# Summary of the model
summary(model2)

# Save model output
capture.output(summary(model2), file = "outputs/logistic_model_summary2.txt")


#Dataset1
library(nnet)
df1 <- read_csv("outputs/cleaned_diabetes_data1.csv")
df1$diabetes_012 <- as.factor(df1$diabetes_012)

model1 <- multinom(diabetes_012 ~ bmi + high_bp + gen_hlth + age + phys_activity, data = df1)


summary(model1)
# Save model output
capture.output(summary(model1), file = "outputs/logistic_model_summary1.txt")

z <- summary(model1)$coefficients / summary(model1)$standard.errors
p <- (1 - pnorm(abs(z), 0, 1)) * 2
round(p, 5)
