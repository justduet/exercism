import "orientation.dart";
import "position.dart";

class Robot {
  Position _beAt;
  Orientation _faceTo;
  static const RIGHT = 'R';
  static const LEFT = 'L';
  static const ADVANCE = 'A';

  Robot(this._beAt, this._faceTo);

  void move(String directions) {
    for (int i = 0; i < directions.length; i++) {
      moveOneStep(directions[i]);
    }
  }
  
  void moveOneStep(String how) {
    if (RIGHT == how) {
      if (Orientation.north == _faceTo)
        _faceTo = Orientation.east;
      else if (Orientation.east == _faceTo)
        _faceTo = Orientation.south;
      else if (Orientation.south == _faceTo)
        _faceTo = Orientation.west;
      else if (Orientation.west == _faceTo) 
        _faceTo = Orientation.north;
    }

    if (LEFT == how) {
      if (Orientation.north == _faceTo)
        _faceTo = Orientation.west;
      else if (Orientation.west == _faceTo)
        _faceTo = Orientation.south;
      else if (Orientation.south == _faceTo)
        _faceTo = Orientation.east;
      else if (Orientation.east == _faceTo) 
        _faceTo = Orientation.north;
    }

    if (ADVANCE == how) {
      if (Orientation.north == _faceTo)
        this._beAt.y += 1;
      else if (Orientation.west == _faceTo)
        this._beAt.x -= 1;
      else if (Orientation.south == _faceTo)
        this._beAt.y -= 1;
      else if (Orientation.east == _faceTo) 
        this._beAt.x += 1;
    }
  }

  Position get position => _beAt;
  Orientation get orientation => _faceTo;

  @override
  String toString() => 'Position: $_beAt Orientation: $_faceTo';
}
