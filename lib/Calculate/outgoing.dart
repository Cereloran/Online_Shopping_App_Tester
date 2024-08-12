class Outgoing {
  double outgoingDay = 0.0;
  double outgoingWeek = 0.0;
  double outgoingFortnight = 0.0;
  double outgoingMonth = 0.0;
  double outgoingQuarter = 0.0;
  double outgoingHalfYear = 0.0;
  double outgoingYear = 0.0;

  double outgoing(double a) {
    print('\n\nYour Overall expenditure is: Bills + Rent + Food + Subscriptions');
    print('\nYour Daily outgoing funds are: $a');
    print('Your Weekly outgoing funds are: ${week(a)}');
    print('Your Fortnightly outgoing funds are: ${fortnight(a)}');
    print('Your Monthly outgoing funds are: ${month(a)}');
    print('Your Quarterly outgoing funds are: ${quarter(a)}');
    print('Your Bi-Yearly outgoing funds are: ${half(a)}');
    print('Your Yearly outgoing funds are: ${year(a)}');
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