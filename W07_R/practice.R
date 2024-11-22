# Set seed for reproducibility
set.seed(42)

# Generate random data
data <- data.frame(
  X = rnorm(100, mean=50, sd=10),   # Random values for X (mean = 50, sd = 10)
  Y = rnorm(100, mean=100, sd=20)  # Random values for Y (mean = 100, sd = 20)
)

# View first few rows of the data
head(data)

# Save data to a CSV if needed
write.csv(data, "random_data.csv", row.names = FALSE)

# Mean of column X
mean(data$X)

# Standard deviation of column Y
sd(data$Y)

# Summary statistics for both columns
summary(data)

# Correlation between X and Y
cor(data$X, data$Y)

# Linear regression (Y ~ X)
model <- lm(Y ~ X, data=data)

# Regression summary
summary(model)

# Adding plot and regression line
plot(data$X, data$Y, main="Scatter Plot of X vs Y", xlab="X", ylab="Y", col="blue")
abline(lm(Y ~ X, data=data), col="red")

# T-test to compare means of X and Y
t.test(data$X, data$Y)