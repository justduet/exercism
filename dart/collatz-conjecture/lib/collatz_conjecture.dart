class CollatzConjecture {
 
  int steps(int workingNumber) {
    int count = 0;

    if (workingNumber <= 0)
      throw new ArgumentError('Only positive integers are allowed');

    // count the steps required to reach 1
    while (workingNumber > 1) {
      count++;

      if (workingNumber % 2 == 0)
        workingNumber = (workingNumber ~/ 2);
      else
        workingNumber = ((workingNumber * 3) + 1);
    }

    return count;
  }
}