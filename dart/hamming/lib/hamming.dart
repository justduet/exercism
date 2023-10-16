class Hamming {
  // calculate the differences between to equal strands of DNA
  // if strands aren't equal in length, throw an error
  // if equal and identical return 0
  // if a == b return 0;
  // if a != b

  int distance(String strandX, String strandY) {
    int result = 999;

    void throwsA(String mustEqual) {
      if (strandX.length != strandY.length) {
        String mustEqual = 'strands must be of equal length';
        throwsA(mustEqual);
      }
   
    }

    if (strandX == strandY)
      result = 0;
    else if (strandX.length != strandY) {
     
    }

    return result;
  }
}


// void functionThatThrows() => throw SomeException();

// void functionWithArgument(bool shouldThrow) {
//   if (shouldThrow) {
//     throw SomeException();
//   }
// }
