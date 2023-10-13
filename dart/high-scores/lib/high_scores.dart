class HighScores{
  List <int> scores = [];

  // define a constructor on the HighScores class
  // initialize the score list
  HighScores(this.scores);

  // gets the biggest score
  int get personalBest => topScores(1).last;

  // gets the top 3 scores
  List <int> get personalTopThree => topScores(3);

  // gets amount of top scores
  List <int> topScores(int count){
    
    List <int> bestScores = scores.toList()..sort();
  
    // reverse, then get first count elements
    return bestScores.reversed.take(count).toList();
  }

  // gets last added score back
  int get latest => scores.last;
}