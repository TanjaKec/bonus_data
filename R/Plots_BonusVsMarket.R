levels(bonus$Market) <- list("Share Option" = "1", 
                             "Foreign Exchange" = "2", 
                             "Government Bond" = "3", 
                             "Ordinary Share" = "4")

# Plot Bonus vs Profit
ggplot(data = bonus, 
       aes(x = Profit, 
           y = Bonus, 
           color = Market)) + 
  geom_point() + stat_ellipse(type = "norm")

ggplot(data = bonus, 
       aes(x = Profit, 
           y = Bonus, 
           color = Market)) + 
  geom_point() + stat_ellipse(type = "norm") +
  geom_smooth(method = "loess", se = F) +
  geom_smooth(method = "lm", se = F) +
  labs (title= "Bonus. vs. Profit", 
      x = "Profit", y = "Bonus.") +
  theme(legend.position = "none", 
        panel.border = element_rect(fill = NA, 
                                    colour = "black",
                                    size = .75),
        plot.title=element_text(hjust=0.5)) 


ggplot(data = bonus, 
       aes(x = Profit, 
           y = Bonus, 
           color = Market)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = F) +
  labs (title= "Bonus. vs. Profit", 
        x = "Profit", y = "Bonus.") +
  theme(legend.position = "right", 
        panel.border = element_rect(fill = NA, 
                                    colour = "black",
                                    size = .75),
        plot.title=element_text(hjust=0.5)) 



levels(bonus$Market) <- list("share option" = "1", "Foreign Exchange" = "2", "Government Bond" = "3", "Ordinary Share" = "4")

