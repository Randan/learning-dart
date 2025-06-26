void mathOperators() {
  const a = 10;
  const b = 20;

  const perimeter = 2 * (a + b);
  const area = a * b;

  print('Perimeter: $perimeter');
  print('Area: $area');

  const sum1Area = area ~/ 1;

  print('sum 1x1 square: $sum1Area');
}

void compareOperators() {
  const number = 60;
  const isGraterThan50 = number > 50;
  const isLessThan100 = number < 100;
  const isDevideBy5 = number % 5 == 0;

  print('Is greater than 50: $isGraterThan50');
  print('Is less than 100: $isLessThan100');
  print('Is devide by 5: $isDevideBy5');
}

void logicalOperators() {
  const hasMoney = true;
  const isStoreOpen = true;

  const canBuy = hasMoney && isStoreOpen;
  const needToWait = !hasMoney || !isStoreOpen;

  print('Can buy: $canBuy');
  print('Need to wait: $needToWait');
}

void ternaryOperator() {
  const temperature = 10;
  const result = temperature > 25
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
  const examScore = 89;

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
  const day = 3;

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
      print("П'ятниця");
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

void whileLoop() {
  int i = 10;
  while (i > 0) {
    i % 2 == 0 ? print('Парне число: $i') : print('Непарне число: $i');
    i--;
  }
}

void breakContinue() {
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0) continue;
    if (i > 15) break;
    print('i: $i');
  }
}
