
Function in R
=============
Use function
-------------
+ __Formal arguements__
	+ Formal arguements are the arguements included in the 
function definition. 
	+ Can use ```formals``` function to returrn all formal arguents.
		 
	```
	> formals(rnorm)
	$n

	$mea[1] 0
    $sd
    [1] 1
	```
	
+ __Argument Matching__	
	+ Arguements match follow the following order: 
		+ 1st: Exact name match 
		+ 2nd: Partial name match
		+ 3rd: Position match
	+ Arguments can be checkeded using ```args()``` function.
		
		```
		> args(rnorm)
		function (n, mean = 0, sd = 1) 
		``` 

Define function
---------------
+ **Property**
	+ Function can be nested( stuctured function). 
	+ Funtion and non-function in R are using different namespace, so it's possible we have an object and a function has a same name. 
+ __General Code Example__

	```
	> FunctionName <- function(<Args1,Args2,...>){
	> 				Functionality implementation
	> 				return(object)
	> }
	```
+ **Lazy Evaluation**
	Arguments in R are evaluated _lazily_, which means arguments are only evaluated as needed and unused argument are not going to be excuted. 
+ **The "..." Arguement** 
	+ "..." argument can save time when passing arguments from a function to another  function. Using "..." can save you from copying the exactly same arguments.
	+ "..." argument can also represent the unknown arguments from the parent. function
	+ _Note that_: __Any__ argument __follow the "..." argument__ shoud be both explicitly and no partially matched.

#### References
[_Computing for Data Analysis_][1], by Roger D. Peng

[1]: https://class.coursera.org/compdata-004
