import 'dart:math';

import 'package:learning_dart/utils/main.dart';
import 'package:learning_dart/lesson_8/names.dart';
import 'package:word_generator/word_generator.dart';

void listsTask() {
  print('Lists task:');
  separator();

  final numbers = List.generate(100, (i) => Random().nextInt(101));

  print(numbers);
  separator();
  print('65-й елемент: ${numbers[64]}');
  separator();

  numbers[49] = 1000000000;

  numbers
    ..remove(24)
    ..remove(45)
    ..remove(66)
    ..remove(88);

  int sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      sum += numbers[i];
    }
  }
  print('Сума чисел, кратних 3: $sum');
  separator();

  final temp = [];
  for (final number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }
  print("temp's length: ${temp.length}");
  separator();

  separator(true);
}

void setsTask() {
  print('Sets task:');
  separator();

  final uniqueNames1 = Set.from(ukrainianNames1);
  final uniqueNames2 = Set.from(ukrainianNames2);

  final intersectedNames = uniqueNames1.intersection(uniqueNames2);
  print('intersectedNames length: ${intersectedNames.length}');
  separator();

  final difference1 = uniqueNames1.difference(uniqueNames2);
  final difference2 = uniqueNames2.difference(uniqueNames1);

  print('difference1: $difference1');
  separator();
  print('difference2: $difference2');

  separator(true);
}

void mapsTask() {
  print('Maps task:');
  separator();

  final wordGenerator = WordGenerator();
  final nouns = wordGenerator.randomNouns(50);

  final nounsMap = Map.fromEntries(nouns.map((e) => MapEntry(e, e.length)));
  final Map<String, int> tempNounsMap = {};

  for (final entry in nounsMap.entries) {
    if (entry.value % 2 == 0) {
      tempNounsMap[entry.key] = entry.value;
    }
  }

  print(tempNounsMap.keys.toList());

  separator(true);
}
