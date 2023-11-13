class PrimeFactors {
  List<int> factors(int naturalNum) {
    List<int> primeFactors = [];
    int divisor = 2;
    bool keepGoing = true;
    while (keepGoing) {
      // take the remainder and try to divide by divisor
      if (naturalNum % divisor == 0) {
        primeFactors.add(divisor);
        naturalNum = (naturalNum ~/ divisor).toInt();
      }
      // if the number is not divisible by divisor, increment it
      else {
        divisor++;
      }
      // 1 is not a prime factor, so it shouldn't be tested
      if (1 == naturalNum) {
        break;
      }
    }
    return primeFactors;
  }
}
