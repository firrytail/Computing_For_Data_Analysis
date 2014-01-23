Simulation
===
+ Drawing sample from specific probability distributions can be done with R functions 
+ R have standard distribution functions: Normal, Poisson, Binomial, Exponential, Gamma, etc. 
+ R allows user to design own distribution by using ```sample()``` function
+ _Important_ : remember to use ```set.seed()``` for reproducibility



Normal Distribution 
---
- norm: generate random Normal variates with a given mean and standard deviation
- dorm: evaluate the Normal probability density (with a given mean/SD(standard deviation)) at a point(or vector of points)
- pnorm: evaluate the cumulative distribution function for a Normal distribution 
- rpois: generate random poisson variates with a given rate

Four main probability distribution function type
---
- d for density: Given a set of values it returns the height of the probability distribution at each point. 


	```
	dnorm(x,mean = 0,sd =1, log = FALSE)
	## log is the argument that can enable or disable logarithmic scale
	## x is the number or vector is going to be generated
	## mean is the average value
	## sd is the standard deviation
	```		
- r for random number generation	

	```	
	rnorm(n,mean = 0, sd = 1)
		
	```
- p for cumulative distribution	: Given a number or a list it computes the probability that a normally distributed random number will be less than that number.

	```	
	pnorm(p,mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
	## lower.tail is the argument you can use to control the function whether to evaluate 
	## lower(left) side or right side
	## log.p is the same as log in dnorm
	```

- q for quartile function: The idea behind qnorm is that you give it a probability, and it returns the number whose cumulative distribution matches the probability.		
	
	```	
	qnorm(q,mean = 0, sd = 1)
		
	```

Random Sampling
---
The sample function draws randomly from a specified set of(scalar) objects allowing you to 
sample from arbitrary distributions

```
sample(x, size, replace = FALSE, prob = NULL)
## x: is the dataset where sample are chosen from
## sixe: non-negative number, number to choose from
## replace: whether there is replacement or not
## prob: vector of probability weights for obtaining the elements of the vector being sampled.


```

Important notes	
---
- pseudo random variable
	- Random variable generation in computer are not real random, they just appear random	- In this case, you can  access your previous generation by using ```set.seed()``` function
	
	```
	> set.seed(1)
	> rnorm(5)
	[1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078
	 rnorm(5)
	[1] -0.8204684  0.4874291  0.7383247  0.5757814 -0.3053884
	> set.seed(1)
	> rnorm(5)
	[1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078
	```
	
Reference
---
[_R Tutorial_](http://www.cyclismo.org/tutorial/R/probability.html), [_Computing for Data Analysis_](https://class.coursera.org/compdata-004/lecture/26) and [*R manual*](http://stat.ethz.ch/R-manual/R-patched/library/base/html/sample.html)


 
