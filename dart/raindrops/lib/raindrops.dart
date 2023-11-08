class Raindrops {
  // convert numbers to raindrop sounds based on their factors
  String convert(int testNum) {
    String rainSounds = '';

    rainSounds += rainTest(testNum, 3, 'Pling');
    rainSounds += rainTest(testNum, 5, 'Plang');
    rainSounds += rainTest(testNum, 7, 'Plong');

    return ('' == rainSounds) ? testNum.toString() : rainSounds;
  }

  String rainTest(int testNum, int factor, String rainSound) {
    // if testNum divides evenly by factor, return rainSound
    return (testNum % factor == 0) ? rainSound : '';
  }
}
