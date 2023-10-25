DateTime addGigasecondTo(final DateTime dateTime) {
  // add a gigasecond to the universal time that is passed in
  return dateTime.add(const Duration(seconds: 1000000000));
}


