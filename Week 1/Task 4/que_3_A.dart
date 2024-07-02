void main() {
  Movie a1 = new Action('Money Heist', 120, 35);     
  print(a1.calcLateFee(21));
  //Here, a1 is declared as a Movie but initialized with an Action object. This demonstrates polymorphism, where the calcLateFee method of Action class is called despite a1 being of type Movie.

  if(a1 is Action){
    // ignore: unnecessary_cast
    Action aaa1 = a1 as Action;                    // downcast from Movie to Action, 
    aaa1.resetId(149);
    print('Id reset for action movie ${aaa1.getIdNumber}');
  }
  // This part checks if a1 is an instance of Action. If true, it downcasts a1 to Action and then calls the resetId method to reset the _idNumber.
  // it shows how to use downcasting to access subclass-specific methods or properties (resetId in Action class) when necessary.


  Comedy c1 = new Comedy('Money Heist', 120, 35);

  if (c1.equals(a1)) {
    print('both movies are same');
  } else {
    print('Movies are not same');
  }
}

abstract class Movie {
  String _title;
  int _idNumber;
  int _numOfDays;

  Movie(this._title, this._idNumber, this._numOfDays);
  double calcLateFee(int noOfExtraDays);

  String get getTitle => _title;
  int get getIdNumber => _idNumber;
  int get getNumOfDays => _numOfDays;

  set setTitle(String name){
    _title = name;
  }
  
  set setIdNumber(int id){
    _idNumber = id; 
  }

  set setDays(int days){
    _numOfDays = days;
  }

  bool equals(Movie second) {
    if (this._title == second._title) {
      return true;
    }
    return false;
  }
}

class Action extends Movie {
  Action(super.title, super.idNumber, super.numOfDays);

  @override
  double calcLateFee(int noOfExtraDays) {
    return (3 * noOfExtraDays).toDouble();
  }

  void resetId(int id){
    _idNumber = id;
  }
}

class Comedy extends Movie {
  Comedy(super.title, super.idNumber, super.numOfDays);

  @override
  double calcLateFee(int noOfExtraDays) => (2.50 * noOfExtraDays);
}

class Drama extends Movie {
  Drama(super.title, super.idNumber, super.numOfDays);

  @override
  double calcLateFee(int noOfExtraDays) => (2 * noOfExtraDays).toDouble();
}
