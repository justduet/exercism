class Isogram {
  bool isIsogram(String word){
    word = word.toLowerCase();
    bool isIsogram = true;

    // use a regular expression to match all letters of the word
    RegExp regex = RegExp((r'[a-z]'));
    Iterable<Match> letters = regex.allMatches(word);
    print (letters);


    // loop through all the letters
     for (int i = 0; i < letters.length; i++) {
        // loop through all the rest of the letters
        for (int j = i + 1; j < letters.length; j++) {
          // do 2 different letters match?
          if(letters.elementAt(i)[0] == letters.elementAt(j)[0]){
            isIsogram = false;
          }
        }
     }

  return isIsogram; 

  }
}
