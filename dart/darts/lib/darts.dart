import 'dart:math';

class Darts {

    // define the radius's (used to determine borders)
    static const int INNER_RADIUS = 1;
    static const int MIDDLE_RADIUS = 5;
    static const int OUTER_RADIUS = 10;

    // define the score for each circle
    static const int INNER_SCORE = 10;
    static const int MIDDLE_SCORE = 5;
    static const int OUTER_SCORE = 1;


  // define a method called score that takes
  // the dart position and returns a score
  int score(double x, double y) {
    int pointScore = 0;

    // calculate the distance of each of the dart's coordinates
    // use pythagorean theorem to calculate hypotenuse

    double result = sqrt(pow(x, 2) + pow(y, 2));

    // compare the result to the radius and return the corresponding score
    // test if the dart is inside, on the border of, or outside each circle
    if (result <= INNER_RADIUS) {
      pointScore = INNER_SCORE;
    } else if (result <= MIDDLE_RADIUS) {
      pointScore = MIDDLE_SCORE;
    } else if (result <= OUTER_RADIUS) {
      pointScore = OUTER_SCORE;
    }
    return pointScore;
  }
}

