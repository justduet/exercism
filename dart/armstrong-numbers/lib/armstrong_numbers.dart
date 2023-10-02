class ArmstrongNumbers {

  // check a number to see whether it is an armstrong (aka narcissistic) number
  bool isArmstrongNumber(String noom){

    // track the total
    BigInt total = BigInt.from(0);

    // separate the number into digit lists
    List<String> digits = noom.split('');
    
    // for loop that parses each string digit into a number
    for (final String digit in digits){
      BigInt bigint = BigInt.from(int.parse(digit));
      // raise each digit to the power equal to the number of digits
      total += bigint.pow(noom.length); 
    }

    // compare the computed total to the original number
    return total.toString() == noom;
  }
}
