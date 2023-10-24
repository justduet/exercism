class SumOfMultiples {
  int sum(List<int> baseValues, int level) {
    Map<int, Null> multiplesMap = {};
    // find all the multiples for the two base values given
    baseValues.forEach((value) {
      // find the multiples less than the level number
      for (int m = 1; m * value < level; m++) {
        if (value == 0) break;
        // add unique multiples to the map
        multiplesMap[m * value] = null;
      }
    });
    // sum all the multiples together
    return multiplesMap.keys.fold(0, (a, b) => a + b);
  }
}
