# Dart Calculator

A scientific command-line calculator written in Dart.

## Features

- Basic: addition, subtraction, multiplication, division
- Trigonometry (degrees): sin, cos, tan
- Inverse trigonometry (result in degrees): asin, acos, atan
- Square root, nth root, square, cube, power
- Logarithm (base 10) and natural log (ln)
- Factorial (0 to 20)
- Input validation and clear error messages (e.g. divide by zero)

## Project structure

```
bin/calculator_project.dart    # console menu (entry point)
lib/calculator_project.dart    # Calculator class (all the logic)
test/calculator_project_test.dart
```

## Requirements

[Dart SDK](https://dart.dev/get-dart) 3.x

## How to run

```bash
git clone https://github.com/YOUR-USERNAME/dart-calculator.git
cd dart-calculator
dart pub get
dart run
```

## Run tests

```bash
dart test
```

## Example

```
Choose an operation: 15
Enter base: 2
Enter power: 10
2.0^10.0 = 1024.0
```
