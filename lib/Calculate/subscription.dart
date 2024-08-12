import 'dart:io';

class Subscription {
  double subscriptionMonth = 0.0;

  double subscription() {
    print('\n\nHow much do you spend on subscriptions per month? (Netflix, Crunchyroll, Spotify, etc...)');
    subscriptionMonth = double.parse(stdin.readLineSync()!);
    double a = convertMonth(subscriptionMonth);

    print('\n\nYour Overall Subscription Costs are:');
    print('\nYour Daily subscription cost is: $a');
    print('Your Weekly subscription cost is: ${week(a)}');
    print('Your Fortnightly subscription cost is: ${fortnight(a)}');
    print('Your Monthly subscription cost is: ${month(a)}');
    print('Your Quarterly subscription cost is: ${quarter(a)}');
    print('Your Bi-Yearly subscription cost is: ${half(a)}');
    print('Your Yearly subscription cost is: ${year(a)}');
    return a;
  }

  double convertMonth(double subscriptionMonth) {
    // Implement the logic for monthly conversion
    return subscriptionMonth / 30;
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