class Acronym {
  String abbreviate(String statement) {

    // change hyphens to spaces
    String hyphensGone = statement.replaceAll('-', ' ');

    // get rid of all unneccesary punctuation
    String words = hyphensGone.replaceAll(RegExp(r'([^\s\w]|[_])'), '');
    String words1 = words.replaceAll(RegExp(r'(\s+)'), ' ');
    print (words);
    print(words1);

    // split words into separate lists
    List<String> separateWords = words1.split(' ');
    List<String> letterList = [];

    // capitalize and add each first letter of each word to a list
    for (String s in separateWords) {
      letterList.add((s[0].toUpperCase()));
    }

    final joinedAcronym = letterList.join('');
    print(joinedAcronym);

    return (joinedAcronym);
  }
}
