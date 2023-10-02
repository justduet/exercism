int score(String word) {

  int total = 0; 
  
  // regular expression returns matches of all letters within the word
  final RegExp regex = new RegExp (r'([a-z])');
  final Iterable letters = regex.allMatches(word.toLowerCase());

  for (final l in letters){
    // pass the string part of the regex match into the letter score function
    total += letterScore(l[0]);
  }

  return total;
}

// function assigns a number to each letter
int letterScore(String letter){
  int score = 0;
  
  switch(letter) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
    case 'l':
    case 'n':
    case 'r':
    case 's':
    case 't':
      score = 1;
      break;

    case 'd':
    case 'g':
      score = 2;
      break;

    case 'b':
    case 'c':
    case 'm':
    case 'p':
      score = 3;
      break;

    case 'f':
    case 'h':
    case 'v':
    case 'w':
    case 'y':
      score = 4;
      break;

    case 'k':
      score = 5;
      break;

    case 'j':
    case 'x':
      score = 8;
      break;

    case 'q':
    case 'z':
      score = 10;
  }
  return score;
}