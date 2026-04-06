library(tidyverse)
library(Lahman)

# Does offense or defense win games in the MLB since 2000 (Minus shortened season in 2020)?

# Data set to use throughout
Teams_filtered <- Teams %>%
  select(teamID, yearID, R, RA, W) %>%
  filter(yearID >= 2000 & yearID != 2020) %>%
  mutate(RD = R - RA)

# Runs Scored vs Wins
Teams_filtered %>%
  ggplot(aes(x = W, y = R)) +
  geom_point() +
  geom_smooth() +
  labs(
    x = "Wins",
    y = "Runs Scored",
    title = "Runs Scored vs. Wins Since 2000")
cor(Teams_filtered$W, Teams_filtered$R)

# The correlation between Runs Scored and Wins about .59, which means
# that Runs Scored have a moderately positive effect on Wins

# Runs Allowed vs Wins
Teams_filtered %>%
  ggplot(aes(x = W, y = RA)) +
  geom_point() +
  geom_smooth() +
  labs(
    x = "Wins",
    y = "Runs Allowed",
    title = "Runs Allowed vs. Wins Since 2000")
cor(Teams_filtered$W, Teams_filtered$RA)

# The correlation between Runs Allowed and Wins about -.68, which means
# that Runs Allowed have a moderately inverse effect on Wins

# Run Differential vs Wins
Teams_filtered %>%
  ggplot(aes(x = RD, y = W)) +
  geom_point() +
  geom_smooth() +
  labs(
    x = "Run Differential",
    y = "Wins",
    title = "Run Differential vs. Wins Since 2000")
cor(Teams_filtered$W, Teams_filtered$RD)

# The correlation between Run Differential and Wins about .94, which means
# that Runs Differential have a very strong positive effect on Wins

# Runs Scored: r = 0.59 (moderate), Runs Allowed: r = -0.68 (moderate, inverse)
# Run Differential: r = 0.94 (very strong)
# Conclusion: Defense edges out offense slightly, but run differential
# is by far the strongest predictor of wins in MLB since 2000
  