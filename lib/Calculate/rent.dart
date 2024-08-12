import 'dart:io';

class Rent {
  double rentWeek = 0.0;

  double rent() {
    print('\n\nHow much is rent per week?');
    rentWeek = double.parse(stdin.readLineSync()!);
    double a = convertWeek(rentWeek);

    print('\n\nYour Overall Rent is:');
    print('\nYour Daily rent is: $a');
    print('Your Weekly rent is: ${week(a)}');
    print('Your Fortnightly rent is: ${fortnight(a)}');
    print('Your Monthly rent is: ${month(a)}');
    print('Your Quarterly rent is: ${quarter(a)}');
    print('Your Bi-Yearly rent is: ${half(a)}');
    print('Your Yearly rent is: ${year(a)}');
    return a;
  }

  double convertWeek(double rentWeek) {
    // Implement the logic for weekly conversion
    return rentWeek / 7;
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