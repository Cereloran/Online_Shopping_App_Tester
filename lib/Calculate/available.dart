class Available {
  double availableDay = 0.0;
  double availableWeek = 0.0;
  double availableFortnight = 0.0;
  double availableMonth = 0.0;
  double availableQuarter = 0.0;
  double availableHalfYear = 0.0;
  double availableYear = 0.0;
  double availableDecade = 0.0;

  double available(double a) {
    print('\n\nYour Available funds are (Overall Income - Overall Expenditure):');
    print('\nYour Daily available funds are: $a');
    print('Your Weekly available funds are: ${week(a)}');
    print('Your Fortnightly available funds are: ${fortnight(a)}');
    print('Your Monthly available funds are: ${month(a)}');
    print('Your Quarterly available funds are: ${quarter(a)}');
    print('Your Bi-Yearly available funds are: ${half(a)}');
    print('Your Yearly available funds are: ${year(a)}');
    return a;
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