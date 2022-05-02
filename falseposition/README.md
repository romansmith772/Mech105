This function (written in matlab) preforms the False Position method.The method of false position, or false position method is a very old method for solving an equation with one unknown; this method, in modified form, is still in use. In simple terms, the method is the trial and error technique of using test ("false") values for the variable and then adjusting the test value according to the outcome. This is sometimes also referred to as "guess and check". Versions of the method predate the advent of algebra and the use of equations.Modern versions of the technique employ systematic ways of choosing new test values and are concerned with the questions of whether or not an approximation to a solution can be obtained, and if it can, how fast can the approximation be found.
* #**Inputs:**#
* func - the function being evaluated
*  the lower guess
*  the upper guess
* es - the desired relative error (should default to 0.0001%)
* maxit - the maximum number of iterations to use (should default to 200)
* varargin, . . . - any additional parameters used by the function

* **Outputs:**
* root - the estimated root location
* fx - the function evaluated at the root location
* ea - the approximate relative error (%)
* iter - how many iterations were performed
