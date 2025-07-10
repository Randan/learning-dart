import 'dart:async';

import 'package:learning_dart/utils/main.dart';

void lesson_11() {
  separator(true);
  print('Lesson 11:');

  // futureTask();
  streamTask();
}

Future<void> futureTask() async {
  separator(true);
  print('Future:');

  await fetchName();
  await fetchAge();
  await sequenceTask();
  await parallelTask();
  final result = await delayedCountdown(3);
  print(result);
}

Future<String> fetchName() async {
  final name = await Future.delayed(
    const Duration(seconds: 2),
    () => 'Andrew Randan',
  );

  print('Мене звати $name');
  return name;
}

Future<String> fetchAge() async {
  final age = await Future.delayed(
    const Duration(milliseconds: 1500),
    () => '25',
  );

  final ageNum = int.parse(age);
  final yearWord = switch (ageNum) {
    _ when ageNum % 100 >= 11 && ageNum % 100 <= 14 => 'років',
    _ when ageNum % 10 == 1 => 'рік',
    _ when ageNum % 10 >= 2 && ageNum % 10 <= 4 => 'роки',
    _ => 'років',
  };

  print('Мені $age $yearWord');
  return age;
}

Future<void> sequenceTask() async {
  final stopwatch = Stopwatch()..start();

  final name = await fetchName();
  final age = await fetchAge();

  stopwatch.stop();

  print('Час виконання (послідовно): ${stopwatch.elapsedMilliseconds} мс');
  print('Результати: $name, $age років');
}

Future<void> parallelTask() async {
  final stopwatch = Stopwatch()..start();

  final [name, age] = await Future.wait([fetchName(), fetchAge()]);

  stopwatch.stop();

  print('Час виконання (паралельно): ${stopwatch.elapsedMilliseconds} мс');
  print('Результати: $name, $age років');
}

Future<String> delayedCountdown(int seconds) async {
  for (var i = seconds; i > 0; i--) {
    print('$i...');
    await Future.delayed(const Duration(seconds: 1));
  }

  return 'Старт!';
}

Future<void> streamTask() async {
  separator(true);
  print('Stream:');

  // fromIterable + await for
  final numbers1 = Stream.fromIterable([1, 2, 3, 4, 5]);

  await for (final value in numbers1) {
    print('await for: $value');
  }

  // fromIterable + listen
  final numbers2 = Stream.fromIterable([1, 2, 3, 4, 5]);

  numbers2.listen((value) {
    print('listen: $value');
  });

  // periodic + take
  final Stream<int> periodicNumbers = Stream.periodic(
    const Duration(seconds: 1),
    (i) => i + 1,
  ).take(10);

  periodicNumbers.listen((value) {
    print('$value...');
  });

  // stream controller
  final stringStream = StreamController<String>();

  stringStream.stream.listen(print, onDone: () => print('Стрім завершено'));

  stringStream.add('Hello');
  stringStream.add('World');
  stringStream.add('Dart');

  await stringStream.close();
}
