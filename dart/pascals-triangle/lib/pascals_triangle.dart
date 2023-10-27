class PascalsTriangle {

  List<List<int>> rows(int max) {
    // call recursive function with new list as seed
    return this.recursiveRowGen(<List<int>>[], max, 0);
    // return this.rowGen(<List<int>>[], max);
  }
  // generate pascal's triangle using recursion
  List<List<int>> recursiveRowGen(List<List<int>> list, int max, int count) {
    if (count++ < max) {
      List<int> newRow = List<int>.generate(count, (i) {
        // use 1 as the first and last item in the list
        int n = 1;
        // if this is not the first or last item in the list
        if (i > 0 && i < count - 1) {
          // sum two digits from the previous list to get the current num
          List<int> prevRow = list[count - 2];
          n = prevRow[i - 1] + prevRow[i];
        }
        return n;
      });

      this.recursiveRowGen(list..add(newRow), max, count);
    }

    return list;
  }
}


  List<List<int>> rowGen(List<List<int>> list, int max) {
    // loop max times
    // create each row of pascal's triangle
    for(int j = 1; j < max + 1; j++){
      List<int> newRow = List<int>.generate(j, (i) {
        int n = 1;
        if (i > 0 && i < j - 1) {
          // sum two digits from the previous list to get the current num
          List<int> prevRow = list[j - 2];
          n = prevRow[i - 1] + prevRow[i];
        }
        return n;
      });

      list.add(newRow);
    }
    return list;
  }