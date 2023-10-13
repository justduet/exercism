
class Diamond {

  List<String> rows(String letter){

    List<String> diamond = [];
  
    final int unit = letter.codeUnitAt(0);
    final int width = (unit - 65) * 2 + 1;
  
    // Start drawing the diamond at A, finish when currentUnit is less than or equal to unit 
    for(int currentUnit = 65; currentUnit <= unit; currentUnit++){
   
      String line = '';

      int midPoint = ((width - 1)/2).round();
      int letterDistance = unit - currentUnit; 
    
      // Insert white space before and after A; make string length equal to Bs
      for(int position = 0; position < width; position++){

        //int distanceFromMiddle = (midPoint - position).abs();
        int distanceFromEdge = ((midPoint - position).abs() - midPoint).abs();

        if(distanceFromEdge == letterDistance){

          line += String.fromCharCode(currentUnit);

        } else {

            line += ' ';
        }
      }
      
      // diamond = Diamond.addRowTwice(diamond, width, line);
      for(int j = 0; j < 2; j++){
        if(diamond.length != width){
          diamond.insert ((diamond.length/2).floor(), line);
        }
      }
    }

    return diamond;
  }
}