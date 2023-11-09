class ResistorColorDuo {
  // resistor colors
  // each color's index is the color's value
  final Map<String, String> colorMap = {
    'black': '0',
    'brown': '1',
    'red': '2',
    'orange': '3',
    'yellow': '4',
    'green': '5',
    'blue': '6',
    'violet': '7',
    'grey': '8',
    'white': '9'
  };

  // for each color add the number for that color to our list
  int value(List<String> colors) {
    String intStr = '';
    colors.length = 2;
    colors.forEach((color) => intStr += colorMap[color]!);
    print(intStr);

    return int.parse(intStr);
  }
}
