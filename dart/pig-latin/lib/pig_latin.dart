String translate(String phrase) {
  // make the phrases into a list and split on spaces
  // loop through the phrases and check for each one
  // give back a string by using join

  List<String> words = phrase.split(' ');

  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    // Rule 1: If a phrase begins with a vowel sound,
    // add an "ay" sound to the end of the phrase.
    // Please note that "xr" and "yt" at the beginning of a phrase make vowel sounds
    // (e.g. "xray" -> "xrayay","yttria" -> "yttriaay").

    if (RegExp(r'^[aeiou]').hasMatch(word))
      word += 'ay';

    // Rule 2: If a phrase begins with a consonant sound,
    // move it to the end of the phrase and then add an "ay"
    // sound to the end of the phrase. Consonant sounds can be made up of multiple consonants,
    // such as the "ch" in "chair" or "st" in "stand" (e.g. "chair" -> "airchay").

    else if (RegExp(r'^thr').hasMatch(word)) {
      print('here');
      word = word.substring(3) + word.substring(0, 3) + 'ay';
    } else if (RegExp(r'^sch').hasMatch(word)) {
      word = word.substring(3) + word.substring(0, 3) + 'ay';
    } else if (RegExp(r'^[ctrs]h').hasMatch(word))
      word = word.substring(2) + word.substring(0, 2) + 'ay';

    // Rule 3: If a phrase starts with a consonant sound followed by "qu",
    // move it to the end of the phrase, and then add an "ay"
    // sound to the end of the phrase (e.g. "square" -> "aresquay").

    else if (RegExp(r'^[^aeiou]qu').hasMatch(word)) {
      word = word.substring(3) + word.substring(0, 3) + 'ay';
    } else if (RegExp(r'qu').hasMatch(word)) {
      word = word.substring(2) + word.substring(0, 2) + 'ay';
    } else if (RegExp(r'^yt|^xr').hasMatch(word)) {
      word += 'ay';
    }

    // Rule 4: If a phrase contains a "y" after a
    // consonant cluster or as the second letter in a
    // two letter phrase it makes a vowel sound (e.g. "rhythm" ->
    // "ythmrhay", "my" -> "ymay").

    else if (RegExp(r'^y').hasMatch(word)) {
      word = word.substring(1) + word[0] + 'ay';
    } else {
      word = word.substring(1) + word[0] + 'ay';
    }
    words[i] = word;  // Update the original list with the transformed word
  }
  return words.join(' ');
}
