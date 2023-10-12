class Bob{
  String response (String statement){
    String result = 'Whatever.';
    statement = statement.trim();

    // Check if it's a question and get rid of whitespace
    if(statement.endsWith('?'))
      result = 'Sure.';

    if(statement.isNotEmpty){
       // Define regex patterns
      RegExp uppercasePattern = RegExp(r'[A-Z]');
      RegExp lowercasePattern = RegExp(r'[a-z]');

      // Find all uppercase and lowercase matches
      //Iterable<Match> uppercaseMatches = uppercasePattern.allMatches(statement);
      Iterable<Match> lowercaseMatches = lowercasePattern.allMatches(statement);

      // all capital letters
      // capital letters with ?
      // capital letters with numbers
      if(lowercaseMatches.length == 0 && RegExp(r'[A-Z]').allMatches(statement).length >= 1){

        if(statement.endsWith('?'))
          result = 'Calm down, I know what I\'m doing!';
        else 
          result = 'Whoa, chill out!';   
      } 
    } else
      result = 'Fine. Be that way!'; 
     
    return result;
  }
}
