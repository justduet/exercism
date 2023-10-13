// import the math package so as to use `pow()'
import "dart:math";

class DifferenceOfSquares {

  // calculate the squared result of numbers added together
  int squareOfSum(int digit){ 
    int baseNum = 0;
    // add the digits together
    for( int i = digit; i >= 1; i-- ) { 
        baseNum += i ;
    }
    int num1 = pow(baseNum, 2).toInt();
     return num1;   
  }

  // calculate the sum of some squared numbers
  int sumOfSquares(int digit){
    int baseNum = 0;
    for( int i = digit; i >= 0; i-- ) { 
       baseNum += pow(i, 2).toInt();
    }
     return baseNum;
    
  }
 
  // calculate the difference between the results
  int differenceOfSquares(int digit){
      return squareOfSum(digit) - sumOfSquares(digit);
    }

}
