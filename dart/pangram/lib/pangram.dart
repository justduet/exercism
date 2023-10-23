class Pangram {
  static const int ALPHABET_COUNT = 26;

  // check for each of these letters and add them one at a time
  bool isPangram(String sentence) {
    sentence = sentence.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');

    // add all found letters to the map {keys are only counted once}
    Map<String, Null> letterMap = {};

    // get the letters from the sentence, add each letter to the map
    sentence.runes.forEach((charCode) {
      letterMap[String.fromCharCode(charCode)] = null;
    });
    // make sure each alphabet letter has been accounted for
    return letterMap.length == ALPHABET_COUNT;
  }
}
