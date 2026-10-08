import 'package:calculator_project/calculator_project.dart';
import 'package:test/test.dart';

void main() {
  group('Calculator Tests', () {

    test('Addition', () {
      final calculator = Calculator();

      expect(calculator.add(10, 20), 30);
    });

    test('Subtraction', () {
      final calculator = Calculator();

      expect(calculator.subtract(20, 10), 10);
    });

    test('Multiplication', () {
      final calculator = Calculator();

      expect(calculator.multiply(10, 5), 50);
    });

    test('Division', () {
      final calculator = Calculator();

      expect(calculator.divide(20, 5), 4);
    });

    test('Square', () {
      final calculator = Calculator();

      expect(calculator.square(5), 25);
    });

    test('Cube', () {
      final calculator = Calculator();

      expect(calculator.cube(3), 27);
    });

    test('Square Root', () {
      final calculator = Calculator();

      expect(calculator.squareRoot(25), 5);
    });

    test('Power', () {
      final calculator = Calculator();

      expect(calculator.power(2, 10), 1024);
    });

    test('Factorial', () {
      final calculator = Calculator();

      expect(calculator.factorial(5), 120);
    });


    test('Division by zero throws', () {
      final calculator = Calculator();

      expect(() => calculator.divide(5, 0), throwsException);
    });

    test('Sin / Cos / Tan (degrees)', () {
      final calculator = Calculator();

      expect(calculator.sin(30), closeTo(0.5, 1e-9));
      expect(calculator.sin(180), 0);
      expect(calculator.cos(60), closeTo(0.5, 1e-9));
      expect(calculator.tan(45), closeTo(1, 1e-9));
    });

    test('Inverse trigonometry returns degrees', () {
      final calculator = Calculator();

      expect(calculator.asin(0.5), closeTo(30, 1e-9));
      expect(calculator.acos(0.5), closeTo(60, 1e-9));
      expect(calculator.atan(1), closeTo(45, 1e-9));
      expect(() => calculator.asin(2), throwsException);
    });

    test('Nth root', () {
      final calculator = Calculator();

      expect(calculator.root(27, 3), closeTo(3, 1e-9));
      expect(calculator.root(-8, 3), closeTo(-2, 1e-9));
      expect(() => calculator.root(-4, 2), throwsException);
    });

    test('Logarithms', () {
      final calculator = Calculator();

      expect(calculator.log(1000), closeTo(3, 1e-9));
      expect(calculator.ln(1), 0);
      expect(() => calculator.log(0), throwsException);
    });

    test('Factorial limits', () {
      final calculator = Calculator();

      expect(calculator.factorial(0), 1);
      expect(calculator.factorial(20), 2432902008176640000);
      expect(() => calculator.factorial(-1), throwsException);
      expect(() => calculator.factorial(21), throwsException);
    });

  });
}
