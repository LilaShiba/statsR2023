import matplotlib.pyplot as plt

# Define the probability mass function as a dictionary
pmf = {0: 0.2, 1: 0.3, 2: 0.1, 3: 0.15, 4: 0.25}

# Create lists of the possible values of the random variable and their probabilities
x = list(pmf.keys())
prob = list(pmf.values())

# Plot the probability mass function as a bar chart
plt.bar(x, prob)
plt.xlabel('Possible values')
plt.ylabel('Probability')
plt.title('Example PMF')
plt.show()