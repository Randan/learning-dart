void main() {
  print('Завдання 1 — List');
  listTask();
  print('');

  print('Завдання 2 — Set');
  setTask();
  print('');

  print('Завдання 3 — Map');
  mapTask();
  print('');

  print('Додаткове завдання (опціонально)');
  optionalTask();
}

// Завдання 1 — List
void listTask() {
  List<String> languages = ['Dart', 'Java', 'Python', 'JavaScript', 'Kotlin'];

  languages.add('C++');
  languages.remove('Java');

  for (int i = 0; i < languages.length; i++) {
    print('${i + 1} - ${languages[i]}');
  }

  languages.sort();

  print(languages);
}

// Завдання 2 — Set
void setTask() {
  Set<String> rememberedTypes = {
    'int',
    'double',
    'String',
    'bool',
    'List',
    'Set',
    'Map',
  };
  Set<String> allBuiltInTypes = {
    'int',
    'double',
    'num',
    'bool',
    'String',
    'List',
    'Map',
    'Set',
    'Runes',
    'Symbol',
    'dynamic',
    'Object',
    'Null',
  };

  print(allBuiltInTypes.intersection(rememberedTypes));
  print('');
  print(allBuiltInTypes.difference(rememberedTypes));
}

// Завдання 3 — Map
void mapTask() {
  Map<String, String> teams = {
    'engineering': 'coding',
    'design': 'drawing',
    'marketing': 'advertising',
    'sales': 'persuasion',
  };

  teams.addAll({'management': 'leadership'});
  teams['design'] = 'painting';

  for (var key in teams.keys) {
    print('$key - ${teams[key]}');
  }

  print('');

  teams.forEach((key, value) {
    print('$key - $value');
  });

  print('');

  String longestValue = teams.values.reduce(
    (a, b) => a.length > b.length ? a : b,
  );
  print(longestValue);
}

// Додаткове завдання (опціонально)
void optionalTask() {
  List<String> fullNames = [
    'Andrii Vronskyi',
    'Victor Karabedyants',
    'Dmytro Levchenko',
    'Oleksandr Sivukhov',
    'Ivan Shlyapin',
    'Renat Bakaiev',
    'Anton Komyshan',
    'Anastasiia Rudchenko',
    'Oleksandr Irtyshchev',
    'Ihor Sosiura',
    'Yurij Tomishchak',
    'Maks Havryliak',
    'Андрій Маліченко',
    'Vitalii Lymar',
    'Анна Берднадська',
    'Дмитрий Криворучко',
    'Tanya Linska',
    'Bogdan Levkovets',
    'Karyna Kononchuk',
    'Борис Куріцин',
    'Artem Karimov',
    'Євгеній Зозуля',
    'Tetiana Zhohlo',
    'Andrii Kysliak',
    'Artur Denysenco',
    'Vladyslav Vozniuk',
    'Sasha Derkach',
    'Pavlo Sobchenko',
    'Matvii Ulytskyi',
    'Yurii Kalishchuk',
    'Pavlo Stepaniuk',
    'Andrii Rudai',
    'Rostyslav Burlaka',
    'Vitalii Chernomurko',
    'Sakhanda Vladyslav',
    'Константин Безымянный',
    'Vadym Zdanovych',
    'Stanislav Kuchkovskyi',
    'Олександр Пудич',
    'Ihor Rybalka',
    'Yaroslav Sheremet',
    'Halyna Hapalo',
    'Павло Чикало',
    'Daniel Serdeshnyi',
    'YEVGEN KOPIYKA',
    'Владислав Саханда',
    'Oleksii Shevchenko',
  ];

  List<String> firstNames = fullNames.map((el) => el.split(' ')[0]).toList();

  Map<String, int> firstNamesCount = {};

  for (String name in firstNames) {
    firstNamesCount[name] = (firstNamesCount[name] ?? 0) + 1;
  }

  firstNamesCount.forEach((key, value) {
    if (value == 1) print(key);
  });

  print('');

  firstNamesCount.forEach((key, value) {
    if (value > 1) print('$key - $value');
  });
}
