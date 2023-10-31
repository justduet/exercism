class NthPrime {
  // if a number is only divisible by itself and by 1, it is a prime number

  int prime(int primePosition) {
    int numberOfPrimes = 1;
    int lastPrimeWeFound = 2;
    int primeCandidate = 2;

    // Make sure 0th prime isn't being requested
    if (primePosition < 1) throw ArgumentError('There is no zeroth prime');

    // loop until numberOfPrimes == primePosition
    MAIN:
    while (numberOfPrimes < primePosition) {
      // start from 2 because it is the first prime
      primeCandidate++;

      // test whether any numbers break the prime
      for (int i = (primeCandidate / 2).floor(); i > 1; i--) {
        if (primeCandidate % i == 0) {
          continue MAIN;
        }
      }
      numberOfPrimes++;
      lastPrimeWeFound = primeCandidate;
    }
    return lastPrimeWeFound;
  }

  // bool tester(int primeCandidate, int testNum) {
  //   return (primeCandidate != testNum && primeCandidate % testNum == 0);
  // }
}
