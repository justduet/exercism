class ResistorColor {
  // resistor colors
  // each color's index is the color's value
  final Map<String, int> colorMap = {
    'black' : 0,
    'brown' : 1,
    'red'   : 2,
    'orange': 3,
    'yellow': 4,
    'green' : 5,
    'blue'  : 6,
    'violet': 7,
    'grey'  : 8,
    'white' : 9
  };
  int colorCode(String color) => colorMap[color]!;
  List<String> get colors => colorMap.keys.toList();
}
