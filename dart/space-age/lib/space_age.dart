class SpaceAge {

  double age({String planet = '', int seconds = 0}) {

    // define orbital period for the current planet (tester = Mercury)
     
     Map <String, double> Orbital = {
      'Mercury' : 0.2408467,
      'Venus' : 0.61519726,
      'Earth' : 1.0,
      'Mars' : 1.8808158,
      'Jupiter' : 11.862615,
      'Saturn' : 29.447498,
      'Uranus' : 84.016846,
      'Neptune' : 164.7913
    };


    int YearSeconds = 31557600;

    // calculate the amount of Earth years from the total # of seconds
    double years = seconds / YearSeconds;

    print (years);
    
    // calculate the age of the person on the current planet 
     double YearsOnPlanet = years / (Orbital[planet] ?? 1.0);

    // round to 2 decimal places
    String RoundedResult = YearsOnPlanet.toStringAsFixed(2);

    // change result to double
    double result = double.parse(RoundedResult); // 2.35 

    print (RoundedResult);
return result;
  
  }
}


// total number of seconds / seconds in a year
// earth years x orbital period
