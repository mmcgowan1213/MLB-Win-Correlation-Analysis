# MLB-Win-Correlation-Analysis
# Question
Does offense or defense have a bigger impact on winning in MLB since 2000(excl. 2020)?

# Data
Used the Lahman baseball database (Teams dataset) in R

# Packages
- tidyverse
- Lahman

# Findings
- Runs Scored vs Wins: r = 0.59 (moderate)
- Runs Allowed vs Wins: r = -0.68 (moderate, inverse)
- Run Differential vs Wins: r = 0.94 (very strong)
- Defense edges out offense slightly, but run differential is by far 
  the strongest predictor of wins.
