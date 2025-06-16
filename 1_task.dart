main() {
  mathOperators();
}

void mathOperators() {
  int a = 10;
  int b = 20;

  int perimeter = 2 * (a + b);
  int area = a * b;

  print('Perimeter: $perimeter');
  print('Area: $area');

  int sum1Area = area ~/ 1;

  print('sum 1x1 square: $sum1Area');
}
