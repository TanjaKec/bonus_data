library(dplyr)
library(ggplot2)

# Read data
bonus <- read.csv("Bonus.csv", stringsAsFactors = F)
dim(bonus)
summary(bonus)

summary(as.factor(bonus[, 5:6]))

bonus[, 5] <- as.factor(bonus[, 5])
bonus[, 6] <- as.factor(bonus[, 6])

glimpse(bonus)
summary(bonus)

levels(bonus$Experience) <- list("only one market" = "1",
                                 "> one market" = "2")


# Plot Bonus vs Profit
ggplot(data = bonus,
       aes(x = Profit,
           y = Bonus,
           color = Experience)) +
  geom_point() + stat_ellipse(type = "norm")



ggplot(data = bonus,
       aes(x = Profit,
           y = Bonus,
           color = Experience)) +
  geom_point() +
  stat_ellipse(type = "norm") +
  geom_smooth(method = "lm", se = FALSE) +
  labs (title= "Bonus. vs. Profit",
      x = "Profit", y = "Bonus.") +
  theme(legend.position = "bottom",
        panel.border = element_rect(fill = NA,
                                    colour = "black",
                                    size = .75),
        plot.title=element_text(hjust=0.5)) +
  facet_wrap(~ Experience)

