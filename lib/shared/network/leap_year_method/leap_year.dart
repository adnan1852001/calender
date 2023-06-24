bool leapYear(int year) {
  bool result;
  ((year % 400 == 0) || (year % 100 != 0 && year % 4 == 0))
      ? result = true
      : result = false;
  return result;
}
