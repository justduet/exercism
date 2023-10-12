class HighScores{
  List <int> scores = [];
  //int lastNumberadded 


  // define a constructor on the HighScores class
  // initialize the score list
  HighScores(List<int> scores) {
    this.scores = scores;
  } 

  // gets the biggest score
  int personalBest(){
    return topScores(1).last;
  }

  // gets the top 3 scores
  List <int> personalTopThree(){
    return topScores(3);
  }

  // gets amount of top scores
  List <int> topScores(int numberOfScores){
    
    List <int> bestScores = scores.toList();
    bestScores.sort(); // [0, 10, 20]
  
    if (bestScores.length >= numberOfScores){
      bestScores = bestScores.sublist(bestScores.length - numberOfScores, bestScores.length); 
    }
    return bestScores.reversed.toList(); 
  }

  // gets last added score back
  int latest(){
    return scores.last;   
  }    
}