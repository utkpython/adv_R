# really really basic framework for agent based models
# maybe we could do dating or something fun

# there has been some research done about dating & game theory
# it can be modeled as an assignment problem



#---------------------------------------
#---------------------------------------
# Assume 100 people, 50 males, 50 females.
# Assume all are looking for a mate of the opposite sex.
# Assume (for the moment) that each person can only have one partner.

# We need to find a match for all of them.
# We need to maximize overall happiness.
# To do this, we need to define a happiness function.

library(lpSolveAPI)

# each person has an attractiveness score (1 to 10)
# Assume the population follows this distribution.
attractiveness <- c(.05,.075,.075,.15,.15,.2,.125,.1,.05,.025)
