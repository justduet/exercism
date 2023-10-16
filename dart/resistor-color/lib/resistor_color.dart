class ResistorColor {
  // resistor colors
  // each color's index is the color's value
  final colors = <String>[
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];
  int colorCode(String color) => colors.indexOf(color);
}