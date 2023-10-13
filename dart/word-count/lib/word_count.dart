class WordCount {
  Map<String, int> countWords(String script){
    Map<String, int> map = {};
    // replace...
    //   ^'
    //   '$
    //   _'
    //   '_ 

    script = script.replaceAll(new RegExp(r"^'|'$| '|' "), ' ');

    final words = script.toLowerCase().split(new RegExp(r"[^\w']+"));
    // looopo oveer the words
    // for each word
    for(String word in words){
      // if it already exists in the map
      if (map.containsKey(word)){
        // add 1 to its entry
        map[word] = (map[word] ?? 0) + 1;
      } else if (word != '') {
        // otherwise (else) add an entry to the mapped to 1
        map[word] = 1;  
      }
    }
    return map;

  }
}

/*
makeNecklace(beads, string, scissors)
{
  // measure the string
  // cut the string
  // tie a big knot in one end of string
  // add beads one at a time
  // tie off necklace
  // return necklace
}
*/

// count the frequency of each word in a script
// create a method that will return a map
// split the words on each space
// count words
// return a map