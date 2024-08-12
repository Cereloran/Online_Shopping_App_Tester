class Time {
  static double week(double day) {
    return day * 7;
  }

  static double fortnight(double day) {
    return day * 14;
  }

  static double month(double day) {
    return day * 30.437;
  }

  static double quarter(double day) {
    return day * 91.311;
  }

  static double half(double day) {
    return day * 182.622;
  }

  static double year(double day) {
    return day * 365.244;
  }

  static double convertWeek(double week) {
    return week / 7;
  }

  static double convertFortnight(double fortnight) {
    return fortnight / 14;
  }

  static double convertMonth(double month) {
    return month / 30.437;
  }

  static double convertQuarter(double quarter) {
    return quarter / 91.311;
  }

  static double convertHalf(double half) {
    return half / 182.622;
  }

  static double convertYear(double year) {
    return year / 365.244;
  }

  static double convertCurrency(double usd) {
    return usd * 1.533845;
  }
}