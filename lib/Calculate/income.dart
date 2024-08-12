import 'dart:io';

class Income {
  double incomeFortnight = 0.0;

  double income() {
    print('Please enter your Fortnightly Income:');
    incomeFortnight = double.parse(stdin.readLineSync()!);
    double a = convertFortnight(incomeFortnight);

    print('\n\nYour Overall Income is:');
    print('\nYour Daily income is: $a');
    print('Your Weekly income is: ${week(a)}');
    print('Your Fortnightly income is: ${fortnight(a)}');
    print('Your Monthly income is: ${month(a)}');
    print('Your Quarterly income is: ${quarter(a)}');
    print('Your Bi-Yearly income is: ${half(a)}');
    print('Your Yearly income is: ${year(a)}');

    return a;
  }

  double convertFortnight(double incomeFortnight) {
    // Implement the logic for fortnightly conversion
    return incomeFortnight / 14;
  }

  double week(double a) {
    // Implement the logic for weekly calculation
    return a * 7;
  }

  double fortnight(double a) {
    // Implement the logic for fortnightly calculation
    return a * 14;
  }

  double month(double a) {
    // Implement the logic for monthly calculation
    return a * 30;
  }

  double quarter(double a) {
    // Implement the logic for quarterly calculation
    return a * 91;
  }

  double half(double a) {
    // Implement the logic for bi-yearly calculation
    return a * 182;
  }

  double year(double a) {
    // Implement the logic for yearly calculation
    return a * 365;
  }
}