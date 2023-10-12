int score(String word) {

  int total = 0; 
  
  // regular expression returns matches of all letters within the word
  final RegExp regex = new RegExp (r'([a-z])');
  final Iterable letters = regex.allMatches(word.toLowerCase());

  Map<String, int> letterScoreMap = createLetterScoreMap();

  for (final l in letters){
    // pass the string part of the regex match into the letter score function
    total += letterScore(l[0] as String, letterScoreMap);
  }

  return total;
}

// return a score for a given letter
int letterScore(String letter, Map<String, int> map){
  // default to 1 for the most common letters
  return map[letter] ?? 1;
}

Map<String, int> createLetterScoreMap(){
  Map<String, int> map = {};
  
  map['d'] =
  map['g'] = 2;

  for(String s in ['b', 'c', 'm', 'p']){
    map[s] = 3;
  }

  for(String s in ['f', 'h', 'v', 'w', 'y']){
    map[s] = 4;
  }

  map['k'] = 5;

  map['j'] =
  map['x'] = 8;

  map['q'] =
  map['z'] = 10;

  return map;
}