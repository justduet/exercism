// import the math package so as to use `pow()'
import "dart:math";

class DifferenceOfSquares {
  
// Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
// The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.
// The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.
// Hence the difference between the square of the sum of the first ten natural numbers 
// and the sum of the squares of the first ten natural numbers is 3025 - 385 = 2640.
//Finding the best algorithm for the problem is a key skill in software engineering.

  int squareOfSum(int number){
    var factorial = 1; 
    
    for( int i = number ; i >= 1; i-- ) { 
        factorial *= i ;
    } 
    print(factorial);
    num newNum = pow(factorial, 2);
    return newNum.toInt();

  }

  int sumOfSquares(int number){

    return number;

  }
  int differenceOfSquares(int number){

    return number;
  }

}
