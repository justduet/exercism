class Triangle {
  // check whether shape is a triangle
  bool isTriangle(double a, double b, double c) {
    bool triangle = true;

    if (a == 0 || b == 0 || c == 0) {
      triangle = false;
    } else if (a + b < c || b + c < a || a + c < b) {
      triangle = false;
    }
    return triangle;
  }

  // check if triangle is equilateral, isosceles, or scalene
  bool equilateral(double a, double b, double c) {
    return isTriangle(a, b, c) && (a == b && b == c);
  }

  bool isosceles(double a, double b, double c) {
    return isTriangle(a, b, c) && (a == b || b == c || a == c);
  }

  bool scalene(double a, double b, double c) {
    return isTriangle(a, b, c) && (a != b && b != c && a != c);
  }
}
