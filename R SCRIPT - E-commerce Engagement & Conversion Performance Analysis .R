
# Evaluating E-Commerce Platform Performance: A Statistical Analysis of Bounce and Conversion Rates 

# PART 1:  One-sample t-test for bounce rate (left-tailed)
df <- read.csv("online_shoppers_intention.csv")
bounce <- na.omit(df$BounceRates)
mu0 <- 0.4568  # industry average bounce rate

test_bounce <- t.test(bounce,
                      mu          = mu0,
                      alternative = "less")
print(test_bounce)

# PART 2: One-Sample Proportion Test for Conversion Rate

# One-sample proportion test for conversion rate (right-tailed)
df <- read.csv("online_shoppers_intention.csv")
successes <- sum(df$Revenue == TRUE)
trials    <- nrow(df)
p0        <- 0.0365  # industry benchmark conversion rate

conversion_test <- binom.test(successes,
                              trials,
                              p           = p0,
                              alternative = "greater")
print(conversion_test)
