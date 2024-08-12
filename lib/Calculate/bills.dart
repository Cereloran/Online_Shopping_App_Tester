import 'dart:io';

class Bills {
  double billEnergy = 0.0;
  double billInternet = 0.0;
  double billPhone = 0.0;
  double billMonth = 0.0;

  double bills() {
    print('\n\nHow much is electricity and gas per month?');
    billEnergy = double.parse(stdin.readLineSync()!);
    print('\nHow much is your phone bill per month?');
    billPhone = double.parse(stdin.readLineSync()!);
    print('\nHow much is your internet per month?');
    billInternet = double.parse(stdin.readLineSync()!);

    billMonth = billEnergy + billPhone + billInternet;
    double a = convertMonth(billMonth);

    print('\n\nYour Overall Bills are:');
    print('\nYour Daily bills are: $a');
    print('Your Weekly bills are: ${week(a)}');
    print('Your Fortnightly bills are: ${fortnight(a)}');
    print('Your Monthly bills are: ${month(a)}');
    print('Your Quarterly bills are: ${quarter(a)}');
    print('Your Bi-Yearly bills are: ${half(a)}');
    print('Your Yearly bills are: ${year(a)}');

    return a;
  }

  double convertMonth(double billMonth) {
    // Implement the logic for monthly conversion
    return billMonth / 30;
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