import '../leap_year_method/leap_year.dart';

int getNumDaysMonth(int year, int month) {
  int numOfDays = 0;
  if (month == 2) {
    if (leapYear(year)) {
      numOfDays = 29;
    } else {
      numOfDays = 28;
    }
  } else if ((month == 1) ||
      (month == 3) ||
      (month == 5) ||
      (month == 7) ||
      (month == 8) ||
      (month == 10) ||
      (month == 12)) {
    numOfDays = 31;
  } else if ((month == 4) || (month == 6) || (month == 9) || (month == 11)) {
    numOfDays = 30;
  } else {
    return -1;
  }
  return numOfDays;
}
