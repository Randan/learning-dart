import 'dart:math';

import 'package:learning_dart/utils/main.dart';

void lesson_9() {
  separator(true);
  print('Lesson 9:');
  separator();

  final myCar = Car('Honda', 2008);
  print('Car: ${myCar.brand}, ${myCar.year}');
  separator();

  final rect = Rectangle(width: 20.0, height: 30.0);
  print('Rectangle: width=${rect.width}, height=${rect.height}');
  separator();

  final user1 = User(name: 'Alice', age: 25);
  final guestUser = User.guest();
  print('User1: ${user1.name}, ${user1.age}');
  print('Guest user: ${guestUser.name}, ${guestUser.age}');
  separator();

  final tempC = Temperature(celsius: 25);
  final tempF = Temperature.fromFahrenheit(77);
  print('Temperature Celsius: ${tempC.celsius}');
  print('Temperature from Fahrenheit 77°F: ${tempF.celsius} °C');
  separator();

  final person = Person('John Doe');
  print('Person fullName: ${person.fullName}');
  print('First name: ${person.firstName}');
  print('Last name: ${person.lastName}');
  separator();

  final circle = Circle(5);
  print('Circle radius: ${circle.radius}');
  print('Circle area: ${circle.area}');
  separator();

  final logger1 = Logger();
  final logger2 = Logger();
  logger1.log('This is a log message.');
  print('Logger instances identical: ${identical(logger1, logger2)}');
  separator();

  final shapeCircle = Shape('circle');
  final shapeSquare = Shape('square');
  print('Shape1 type: ${shapeCircle.type}');
  print('Shape2 type: ${shapeSquare.type}');
  separator();

  try {
    final invalidShape = Shape('triangle');
  } catch (e) {
    print('Error creating shape: $e');
  }
  separator(true);
}

class Car {
  Car(this.brand, this.year);

  final String brand;
  final int year;
}

class Rectangle {
  Rectangle({required this.width, required this.height});

  final double width;
  final double height;
}

class User {
  User({required this.name, required this.age});

  User.guest() : name = 'Guest', age = 0;

  final String name;
  final int age;
}

class Temperature {
  Temperature({required this.celsius});

  Temperature.fromFahrenheit(double f) : celsius = (f - 32) * 5 / 9;

  final double celsius;
}

class Person {
  Person(this.fullName) {
    firstName = fullName.split(' ')[0];
    lastName = fullName.split(' ')[1];
  }

  final String fullName;
  String firstName = '';
  String lastName = '';
}

class Circle {
  Circle(this.radius) : area = pi * pow(radius, 2);

  final double radius;
  final double area;
}

class Logger {
  Logger._privateConstructor();

  static final Logger _instance = Logger._privateConstructor();

  factory Logger() => _instance;

  void log(String message) {
    print('Log: $message');
  }
}

class Shape {
  Shape._privateConstructor(this.type);

  static final Shape _circleShape = Shape._privateConstructor('circle');
  static final Shape _squareShape = Shape._privateConstructor('square');

  final String type;

  factory Shape(String type) => type == 'circle'
      ? _circleShape
      : type == 'square'
      ? _squareShape
      : throw Exception('Invalid type of shape');
}
