void main(){
  List<Person> list = [];
  Student stu = new Student('Ahsan', 2.9);
  list.add(stu);

  print('${stu.getName} is outstanding: ${stu.isOutstanding()}');

  Professor prof = new Professor('Imtiaz', 50);
  list.add(prof);

  prof.setPublications = 100;
  print('${prof.getName} is outstanding: ${prof.isOutstanding()}');

  //Note: 
  //prof.setPublication(100);
  //will give error because Dart setters are typically used, where you assign a value to the property using the assignment operator (=).               
}

abstract class Person {
  String _name;

  Person(this._name);

  String get getName => _name;
  set setName(String name) {
    _name = name;
  }

  bool isOutstanding();
}

class Student extends Person {
  double _CGPA;

  Student(super._name, this._CGPA);

  get getCGPA => _CGPA;
  set setCGPA(double cgpa) {
    _CGPA = cgpa;
  }

  bool isOutstanding() {
    if (_CGPA > 3.5) {
      return true;
    } else {
      return false;
    }
  }
}

class Professor extends Person {
  int _numOfPublications;

  Professor(super._name, this._numOfPublications);

  get getPublications => _numOfPublications;

  set setPublications(int publications){
    _numOfPublications = publications;
  }

  bool isOutstanding() {
    if (_numOfPublications > 50) {
      return true;
    } else {
      return false;
    }
  }
}