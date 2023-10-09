class Bob{
  String response (String statement){
    String result = 'Whatever.';

    if(statement.trim().endsWith('?')){
      result = 'Sure.'; 
    }

    // Check if string is all whitespace
    if(statement.trim().isEmpty){
      result = 'Fine. Be that way!'; 
      }
      print (result);

      // all capital letters
      // capital letters with ?
    if(statement.trim().isNotEmpty){

       // Define regex patterns
      RegExp uppercasePattern = RegExp(r'[A-Z]');
      RegExp lowercasePattern = RegExp(r'[a-z]');

      // Find all uppercase and lowercase matches
      Iterable<Match> uppercaseMatches = uppercasePattern.allMatches(statement);
      Iterable<Match> lowercaseMatches = lowercasePattern.allMatches(statement);

      // Calculate the counts
      int uppercaseCount = uppercaseMatches.length;
      int lowercaseCount = lowercaseMatches.length;

      // all capital letters
      // capital letters with ?
      // capital letters with numbers

      if(lowercaseCount == 0 && uppercaseCount >= 1){
        RegExp questionPattern = RegExp(r'[?]');
        Iterable<Match> questionMatches = questionPattern.allMatches(statement);
        int questionCount = questionMatches.length;

        if(questionCount >= 1){
          result = 'Calm down, I know what I\'m doing!';
          print (result);
        } 
        else {
          result = 'Whoa, chill out!';
          print (result);
        }
      }
    } 
    return result;
}
}
//capitals with ? = ('Calm down, I know what I\'m doing!')

// bob will only say 5 things:
// "Sure." The convention used for questions is that it ends with a question mark. (+)
// "Whoa, chill out!" The convention used for yelling is ALL CAPITAL LETTERS. 
// "Calm down, I know what I'm doing!" This is what he says if you yell a question at him.
// "Fine. Be that way!" This is how he responds to silence. (+)
// "Whatever." This is what he answers to anything else.

// pass a string in that will be evaluated
// do things to bob's string in response to how it comes in
// check for different things in the string that is passed in
// loop potentially?
// could do regex to check for: 
// '?', 'ALL CAPITAL LETTERS' , 'ALL CAPITAL LETTERS + '?' 'whitespace characters'
// else: he answers "Whatever."

// "Sure."
// "Whoa, chill out!"
// "Calm down, I know what I'm doing!"
// "Fine. Be that way!"
// "Whatever."


  // regular expression returns matches of all letters within the word
  // final RegExp regex = new RegExp (r'([a-z])');
  // final Iterable letters = regex.allMatches(word.toLowerCase());

  // what happens if I cut out all whitespace or is that what i should check first
  // strip out whitespace characters after accounting for them


  // all capital letters
  // capital letters with ?
  // capital letters with numbers
  // non-letters with question
  // question with no letters
  // multiple line question
  // statement containing question mark
  // shouting with no exclamation mark
  // shouting with special characters
