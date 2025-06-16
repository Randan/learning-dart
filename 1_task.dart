main() {
  mathOperators();
  compareOperators();
  logicalOperators();
  ternaryOperator();
  assignmentOperators();
  conditionalConstruction();
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

void compareOperators() {
  int number = 60;
  bool isGraterThan50 = number > 50;
  bool isLessThan100 = number < 100;
  bool isDevideBy5 = number % 5 == 0;

  print('Is greater than 50: $isGraterThan50');
  print('Is less than 100: $isLessThan100');
  print('Is devide by 5: $isDevideBy5');
}

void logicalOperators() {
  bool hasMoney = true;
  bool isStoreOpen = true;

  bool canBuy = hasMoney && isStoreOpen;
  bool needToWait = !hasMoney || !isStoreOpen;

  print('Can buy: $canBuy');
  print('Need to wait: $needToWait');
}

void ternaryOperator() {
  int temperature = 10;
  String result = temperature > 25
      ? 'Тепло'
      : temperature < 10
      ? 'Дуже холодно'
      : 'Прохолодно';

  print('Result: $result');
}

void assignmentOperators() {
  double score = 0;
  score += 10;
  score -= 5;
  score *= 2;
  score /= 0;

  print('Score: $score');
}

void conditionalConstruction() {
  int examScore = 89;

  if (examScore > 90) {
    print('Відмінно');
  } else if (examScore >= 75 && examScore <= 90) {
    print('Добре');
  } else if (examScore >= 60 && examScore <= 74) {
    print('Задовільно');
  } else if (examScore < 20) {
    print('Повторити курс');
  } else if (examScore < 60) {
    print('Не здано');
  }
}
