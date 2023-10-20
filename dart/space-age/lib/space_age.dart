class SpaceAge {
  static const Map<String, double> orbitalPeriod = {
    'Mercury':    0.2408467,
    'Venus'  :    0.61519726,
    'Mars'   :    1.8808158,
    'Earth'  :    1.0,
    'Jupiter':   11.862615,
    'Saturn' :   29.447498,
    'Uranus' :   84.016846,
    'Neptune':  164.7913
  };


  static const int EARTH_YEAR_SECONDS = 31557600;

  static double age({String planet = '', int seconds = 0}) {
    double result = 0.0;

    // make sure planet is one of the planets in our orbital period map
    if (orbitalPeriod.containsKey(planet)) {
      // calculate the amount of Earth years from the total # of seconds
      double yearsOnEarth = seconds / EARTH_YEAR_SECONDS;

      // calculate the age of the person on the current planet, default to Earth orbital period
      double yearsOnPlanet = yearsOnEarth / (orbitalPeriod[planet]!);

      // round to 2 decimal places
      String roundedResult = yearsOnPlanet.toStringAsFixed(2);

      // change result to double
      result = double.parse(roundedResult);
    } else {
      throw new Exception("Planet not found");
    }
    return result;
  }
}
