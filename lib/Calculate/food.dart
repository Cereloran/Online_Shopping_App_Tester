import 'dart:io';

class Food {
  double foodDay = 0.0;
  double foodWeek = 0.0;

  double food() {
    print('\n\nHow much do you spend on food per week?');
    foodWeek = double.parse(stdin.readLineSync()!);

    double a = convertWeek(foodWeek);

    print('\n\nYour Overall Food Costs are:');
    print('\nYour Daily food cost is: $a');
    print('Your Weekly food cost is: ${week(a)}');
    print('Your Fortnightly food cost is: ${fortnight(a)}');
    print('Your Monthly food cost is: ${month(a)}');
    print('Your Quarterly food cost is: ${quarter(a)}');
    print('Your Bi-Yearly food cost is: ${half(a)}');
    print('Your Yearly food cost is: ${year(a)}');

    return a;
  }

  double convertWeek(double foodWeek) {
    // Implement the logic for weekly conversion
    return foodWeek / 7;
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