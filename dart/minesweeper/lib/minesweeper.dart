class Minesweeper {
  List<String> _grid;

  Minesweeper(this._grid);

  List<String> get annotated {
    List<String> annotatedGrid = [];
    String addMe;

    // loop through the rows
    for (int y = 0; y < _grid.length; y++) {
      // create a return row to add to
      annotatedGrid.add('');

      // loop through each position
      for (int x = 0; x < _grid[0].length; x++) {
        // only work on non-mine spaces
        if (_grid[y][x] == ' ') {
          int mineCount = countMinesInSurroundings(x, y);
          // if we counted up some mines, add the count
          // else leave it a space
          if (0 != mineCount)
            addMe = '$mineCount';
          else
            addMe = ' ';
        } else {
          // keep the space a mine
          addMe = '*';
        }
        // add the character to the line
        annotatedGrid[y] += addMe;
      }
    }

    return annotatedGrid;
  }

  // method that checks (x, y) to se whether it is a mine
  bool isPositionMine(int x, int y) {
    bool foundMine = true;
    // if it's off the grid return false
    if (x < 0 || y < 0 || x >= _grid[0].length || y >= _grid.length)
      foundMine = false;
    // check if the position is a mine
    else if (_grid[y][x] != '*') foundMine = false;

    return foundMine;
  }

  // loop through all relative positions and
  // check whether they contain a mine
  int countMinesInSurroundings(int x, int y) {
    int mineCount = 0;
    // relative positions: 8 surrounding positions
    // 1 2 3
    // 4 % 5
    // 6 7 8
    for (int relY = -1; relY <= 1; relY++) {
      for (int relX = -1; relX <= 1; relX++) {
        // ignore ourselves, (x,y)
        if (0 != relX || 0 != relY) {
          // add 1 if mine is found in relative location
          if (this.isPositionMine(x + relX, y + relY)) mineCount++;
        }
      }
    }
    return mineCount;
  }
}
