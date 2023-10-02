class ArmstrongNumbers {
  // return x==y
  bool isArmstrongNumber(String noom){
    // get the length of the string
    BigInt total = BigInt.from(0);
    int length = noom.length;

    // separate the number into digit lists
    List<String> digits = noom.split('');
    
    // for loop that parses each string into a number
    // raise each digit to the length of digits
    for (final String digit in digits){
      int number = int.parse(digit);
      // raise each digit to the number of digits
      total += BigInt.from(number).pow(length); 
    }
    return total.toString() == noom;

  }
  
}


