main() {
  mathOperators();
  compareOperators();
  logicalOperators();
  ternaryOperator();
  assignmentOperators();
  conditionalConstruction();
  switchCase();
  forLoop();
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

void switchCase() {
  int day = 3;

  switch (day) {
    case 1:
      print('Понеділок');
    case 2:
      print('Вівторок');
    case 3:
      print('Середа');
    case 4:
      print('Четвер');
    case 5:
      print('П\'ятниця');
    case 6:
      print('Субота');
      print('Вихідний день 🎉');
    case 7:
      print('Неділя');
      print('Вихідний день 🎉');
    default:
      print('Невірний номер дня');
  }
}

void forLoop() {
  for (int i = 1; i <= 10; i++) {
    print('i: $i');
  }

  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) print('i: $i');
  }

  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    sum += i;
  }
  print('sum: $sum');
}
