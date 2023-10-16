class SpaceAge {
  static const Map<String, double> orbitalPeriod = {
    'Mercury':    0.2408467,
    'Venus'  :    0.61519726,
    'Mars'   :    1.8808158,
    'Jupiter':   11.862615,
    'Saturn' :   29.447498,
    'Uranus' :   84.016846,
    'Neptune':  164.7913
  };

  static const int EARTH_YEAR_SECONDS = 31557600;

  static double age({String planet = '', int seconds = 0}) {
    // calculate the amount of Earth years from the total # of seconds
    double yearsOnEarth = seconds / EARTH_YEAR_SECONDS;

    // calculate the age of the person on the current planet, default to Earth orbital period
    double yearsOnPlanet = yearsOnEarth / (orbitalPeriod[planet] ?? 1.0);

    // round to 2 decimal places
    String roundedResult = yearsOnPlanet.toStringAsFixed(2);

    // change result to double
    double result = double.parse(roundedResult);

    return result;
  }
}
