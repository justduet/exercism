class PhoneNumber {
  String clean(String number) {
    // regular expression gets rid of allowed punctuation
    String num = number.replaceAll(RegExp(r'([()\s-.+])'), '');

    // does the phone number have letters or unwanted punctuation?
    if (num.contains(RegExp(r'[a-z]')))
      throw FormatException('letters not permitted');
    else if (num.contains(RegExp(r'[^\w]+')))
      throw FormatException('punctuations not permitted');

    // if there are less than 10 digits or more than 11
    if (num.length < 10)
      throw FormatException('must not be fewer than 10 digits');
    else if (num.length > 11)
      throw FormatException('must not be greater than 11 digits');

    // 11-digit numbers, the first digit must be a 1
    if (num.length == 11) {
      if (num[0] == '1') {
        num = num.replaceFirst('1', '');
      } else {
        throw FormatException('11 digits must start with 1');
      }
    }

    // at this point, the number is 10 digits

    // check if area code starts with 0 or 1
    if (num[0] == '0')
      throw FormatException('area code cannot start with zero');
    else if (num[0] == '1')
      throw FormatException('area code cannot start with one');

    // check if exchange code starts with 0 or 1
    if (num[3] == '0')
      throw FormatException('exchange code cannot start with zero');
    else if (num[3] == '1')
      throw FormatException('exchange code cannot start with one');

    return (num);
  }
}
