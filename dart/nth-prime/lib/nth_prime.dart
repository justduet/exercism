// new solution! based on, and thanks to...
// https://exercism.org/tracks/dart/exercises/nth-prime/solutions/letmebelazy
class NthPrime {
  int prime(int num) {
    if (num < 1) throw ArgumentError('There is no zeroth prime');
    List<int> list = [2];
    int primeCandidate = 3;
    bool isPrime = true;

    while (list.length != num) {
      isPrime = true;
      for (int i = 0; i < list.length; i++) {
        if (primeCandidate % list[i] == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) list.add(primeCandidate);
      primeCandidate++;
    }
    return list.last;
  }
}
