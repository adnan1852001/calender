import '../get_num_days_month_method/get_num_days_month.dart';
import '../leap_year_method/leap_year.dart';

int getStartDay(int year, int month) {
  int firstDay = 3, count = 0;
  for (int i = 1600; i < year; i++) {
    if (leapYear(i)) {
      count += 366;
    } else {
      count += 365;
    }
  }
  for (int i = 1; i < month; i++) {
    count += getNumDaysMonth(year, i);
  }
  return ((firstDay + count) % 7);
}
