class Raindrops {
  // convert numbers to raindrop sounds based on their factors
  String convert(int testNum) {
    String rainSound = '';

    if (testNum % 3 == 0) rainSound += 'Pling';
    if (testNum % 5 == 0) rainSound += 'Plang';
    if (testNum % 7 == 0) rainSound += 'Plong';

    if ('' == rainSound) rainSound = testNum.toString();

    return rainSound;
  }
}
