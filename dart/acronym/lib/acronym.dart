class Acronym {
  String abbreviate(String statement) {
    // change multiple hyphens, underscores, and spaces to single spaces
    // split into words
    // take the first letter of each word
    // create the acronym
    return statement.replaceAll(RegExp(r'(_|-|\s)+'), ' ')
      .split(' ')
      .map((word)=> word[0].toUpperCase()).join('');
  }
}

