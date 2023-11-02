class BeerSong {
  List<String> recite(int bottleCount, int verseCount) {
    List<String> song = [];

    // for every verse lessen the number of beers on the wall
    // give back a list of verses
    for (int i = verseCount; i > 0; i--) {
      song.addAll(this.reciteVerse(bottleCount--));
      if (i > 1) song.add('');
    }
    return song;
  }
  // change the lyrics of the beer song depending on the scenario
  List<String> reciteVerse(int bottleCount) {
    String bottles = 'bottles';
    String topLineBottles = 'bottles';
    String topLineCount = '$bottleCount';
    String topLineCountLower = '$bottleCount';
    String bottlesLeft = '${bottleCount - 1}';
    String takie = 'one';
    String command = 'Take $takie down and pass it around,';
    const String BEER_ON_THE_WALL = 'of beer on the wall';

    switch (bottleCount) {
      case 0:
        topLineCount = 'No more';
        bottlesLeft = '99';
        topLineCountLower = 'no more';
        command = 'Go to the store and buy some more,';
        break;
      case 1:
        topLineBottles = 'bottle';
        takie = 'it';
        command = 'Take $takie down and pass it around,';
        bottlesLeft = 'no more';
        break;
      case 2:
        bottles = 'bottle';
        break;
    }
    // actual verse formula
    return [
      '$topLineCount $topLineBottles $BEER_ON_THE_WALL, $topLineCountLower ' +
          '$topLineBottles of beer.',
      '$command $bottlesLeft $bottles $BEER_ON_THE_WALL.'
    ];
  }
}
