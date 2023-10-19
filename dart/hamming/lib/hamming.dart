class Hamming {
  // define a method that takes 2 DNA strands and returns the # of differences
  int distance(String strandX, String strandY) {
    int differences = 0;

    // throw an error if strands are not equal in length
    if (strandX.length != strandY.length) {
      throw ArgumentError('strands must be of equal length');
    } else {
      // iterate through both strands and count up the differences
      for (int i = 0; i < strandX.length; i++) {
        // if different, add 1
        if (strandX[i] != strandY[i]) {
          differences += 1;
        }
      }
    }

    return  differences;
  }
}
