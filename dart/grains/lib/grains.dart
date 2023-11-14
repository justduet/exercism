BigInt square(final int n) {
  if (n <= 0 || n > 64) throw ArgumentError('square must be between 1 and 64');

  BigInt grains = BigInt.from(1);
  final BigInt multiplier = BigInt.from(2);

  // for each chess square, double the number of grains
  for (int i = 1; i < n; i++) grains *= multiplier;

  return (grains);
}

BigInt total() {
  BigInt totalGrains = BigInt.from(0);

  // for each chess square, add the total number of grains together
  for (int i = 1; i <= 64; i++) totalGrains += square(i);

  return (totalGrains);
}
