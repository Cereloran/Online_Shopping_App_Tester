import 'dart:io';

class HomeOwner {
  double mortgageDay = 0.0;
  double mortgageYear = 0.0;
  double mortgageTotal = 0.0;
  double interest = 0.0;
  double interestCost = 0.0;
  double interestYear = 0.0;
  double mortgageLength = 0.0;
  double strata = 0.0;
  double landTax = 0.0;
  double councilRates = 0.0;

  double mortgage() {
    print('\n\nHow much of a loan do you have left on your mortgage?');
    mortgageTotal = double.parse(stdin.readLineSync()!);
    print('\n\nHow much time do you have left on your mortgage?(In Days)');
    mortgageLength = double.parse(stdin.readLineSync()!);
    print('\n\nWhat is the interest rate for your mortgage? %');
    interest = double.parse(stdin.readLineSync()!);
    print('\n\nWhat is the strata/land tax per quarter');
    landTax = double.parse(stdin.readLineSync()!);
    print('\n\nWhat are the council rates per quarter');
    councilRates = double.parse(stdin.readLineSync()!);

    mortgageYear = mortgageTotal / mortgageLength;
    interestCost = ((interest / 100) * mortgageYear);

    double a = convertYear(mortgageYear);
    print('\n\nYour Overall HomeOwner Costs are:');
    print('\nYour Daily HomeOwner costs are: $a');
    print('Your Weekly HomeOwner costs are: ${week(a)}');
    print('Your Fortnightly HomeOwner costs are: ${fortnight(a)}');
    print('Your Monthly HomeOwner costs are: ${month(a)}');
    print('Your Quarterly HomeOwner costs are: ${quarter(a)}');
    print('Your Bi-Yearly HomeOwner costs are: ${half(a)}');
    print('Your Yearly HomeOwner costs are: ${year(a)}');

    double b = convertQuarter(strata);
    print('\n\nYour Overall Strata costs are:');
    print('\nYour Daily Strata costs are: $b');
    print('Your Weekly Strata costs are: ${week(b)}');
    print('Your Fortnightly Strata costs are: ${fortnight(b)}');
    print('Your Monthly Strata costs are: ${month(b)}');
    print('Your Quarterly Strata costs are: ${quarter(b)}');
    print('Your Bi-Yearly Strata costs are: ${half(b)}');
    print('Your Yearly Strata costs are: ${year(b)}');

    double c = convertYear(interestCost);
    print('\n\nYour Overall Interest Costs are:');
    print('\nYour Daily Interest cost is: $c');
    print('Your Weekly Interest cost is: ${week(c)}');
    print('Your Fortnightly Interest cost is: ${fortnight(c)}');
    print('Your Monthly Interest cost is: ${month(c)}');
    print('Your Quarterly Interest cost is: ${quarter(c)}');
    print('Your Bi-Yearly Interest cost is: ${half(c)}');
    print('Your Yearly Interest cost is: ${year(c)}');

    double d = convertQuarter(councilRates);
    print('\n\nYour Overall Council Rates are:');
    print('\nYour Daily Council Rates are: $d');
    print('Your Weekly Council Rates are: ${week(d)}');
    print('Your Fortnightly Council Rates are: ${fortnight(d)}');
    print('Your Monthly Council Rates are: ${month(d)}');
    print('Your Quarterly Council Rates are: ${quarter(d)}');
    print('Your Bi-Yearly Council Rates are: ${half(d)}');
    print('Your Yearly Council Rates are: ${year(d)}');

    mortgageTotal = year(a) + year(b) + year(c) + year(d);
    double e = convertYear(mortgageTotal);
    print('\n\nYour Overall Home loan Cost are:');
    print('\nYour Daily Home loan Costs are: $e');
    print('Your Weekly Home loan Costs are: ${week(e)}');
    print('Your Fortnightly Home loan Costs are: ${fortnight(e)}');
    print('Your Monthly Home loan Costs are: ${month(e)}');
    print('Your Quarterly Home loan Costs are: ${quarter(e)}');
    print('Your Bi-Yearly Home loan Costs are: ${half(e)}');
    print('Your Yearly Home loan Costs are: ${year(e)}');

    return a;
  }

  double convertYear(double value) {
    // Implement the logic for yearly conversion
    return value / 365;
  }

  double convertQuarter(double value) {
    // Implement the logic for quarterly conversion
    return value / 91;
  }

  double week(double value) {
    // Implement the logic for weekly calculation
    return value * 7;
  }

  double fortnight(double value) {
    // Implement the logic for fortnightly calculation
    return value * 14;
  }

  double month(double value) {
    // Implement the logic for monthly calculation
    return value * 30;
  }

  double quarter(double value) {
    // Implement the logic for quarterly calculation
    return value * 91;
  }

  double half(double value) {
    // Implement the logic for bi-yearly calculation
    return value * 182;
  }

  double year(double value) {
    // Implement the logic for yearly calculation
    return value * 365;
  }
}
