# eda.R

library(tidyverse)

#Dataset2
df2 <- read_csv("outputs/cleaned_diabetes_data2.csv")
df2$diabetes_binary <- as.factor(df2$diabetes_binary)


# BMI distribution
ggplot(df2, aes(x = bmi, fill = diabetes_binary)) +
  geom_histogram(position = "identity", alpha = 0.6, bins = 30) +
  labs(title = "BMI Distribution by Diabetes Status") +
  theme_minimal()

ggsave("plots/bmi_by_diabetes2.png")

# General health vs diabetes
df2 %>%
  group_by(gen_hlth, diabetes_binary) %>%
  summarize(count = n()) %>%
  ggplot(aes(x = gen_hlth, y = count, fill = diabetes_binary)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "General Health by Diabetes Status", x = "General Health") +
  theme_minimal()

ggsave("plots/gen_health_by_diabetes2.png")

#Dataset1

df1 <- read_csv("outputs/cleaned_diabetes_data1.csv")
df1$diabetes_012 <- as.factor(df1$diabetes_012)

df1 %>%
  count(diabetes_012) %>%
  mutate(prop = n / sum(n)) %>%
  ggplot(aes(x = diabetes_012, y = prop, fill = diabetes_012)) +
  geom_col() +
  scale_y_continuous(labels = scales::percent) +
  labs(title = "Diabetes Class Distribution", y = "Proportion") +
  theme_minimal()

ggplot(df1, aes(x = bmi, fill = diabetes_012)) +
  geom_histogram(position = "identity", alpha = 0.6, bins = 30) +
  labs(title = "BMI Distribution by Diabetes Status", x = "BMI", y = "Count") +
  theme_minimal()

ggsave("plots/bmi_by_diabetes1.png")