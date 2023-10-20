class Anagram {
  List<String> findAnagrams(String targetStr, List<String> words) {
   final String target = targetStr.toLowerCase();
  
    return words.where((String wordStr){
      final String word = wordStr.toLowerCase();
        
      // the word is an anagram IF
      return (
          // strings do NOT match perfectly
          word != target &&

          // AND the lengths are the same
          word.length == target.length &&

          // AND sorted, both Strings match
          strToSortedStr(word) == strToSortedStr(target)
        
      );
    }).toList();
  }
  // convert word to an alphabetically sorted word
  static String strToSortedStr(String word) {
    final List<String> sortedLetters = word.split('')..sort();
    return sortedLetters.join();
  }
}
