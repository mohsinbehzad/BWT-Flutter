void main() {
  Student s1 = new Student.allData('Faisal', [78, 79, 73, 91, 85]);
  print(s1.average());

  Student s2 = new Student();
  s2.setName = 'Mujtaba';
  s2.setList = [98, 85, 76, 91, 80];
  print(s2.average());

  print(s1.compare(s2));
}

class Student {
  String _name;
  List<int> _resultArray;

  // Student(){_name = '', _resultArray =[0]};              // it will give error, two methods to solve it.
  //                                                        // Either use late keyword (before variables) or use : instad of {} in Constructor as mentioned below;
  Student() : _name = '', _resultArray = List.filled(5, 0);

  // Student.named(this._name);                             // it will give error, because resultArray is not initialize, either use late keyword for resultArray or mentioned below;
  Student.named(this._name) : _resultArray = List.filled(5, 0); 
  Student.allData(this._name, this._resultArray);

  String get getName => _name;
  List<int> get getList => _resultArray;

  set setName(String name) {
    _name = name;
  }

  set setList(List<int> resultArray) {
    _resultArray = resultArray;
  }

  double average() {
    int sum = _resultArray.reduce((a, b) => a +b);           //Reduces a collection to a single value by iteratively combining elements of the collection using the provided function.
    return sum / _resultArray.length;
  }

  String compare(Student second) {
    double firstAverage = this.average();
    double secondAverage = second.average();

    if (firstAverage > secondAverage) {
      return '${this._name} has higher average of ${firstAverage.toStringAsFixed(2)} than ${second._name} with ${secondAverage.toStringAsFixed(2)}';
    } else if (firstAverage < secondAverage) {
      return '${this._name} has lower average of ${firstAverage.toStringAsFixed(2)} than ${second._name} with ${second.average().toStringAsFixed(2)}';
    } else {
      return '${this._name} and ${second._name} have same average ${firstAverage.toStringAsFixed(3)}';
    }
  }

  // .toStringAsFixed(fractionDigits)
  // The toStringAsFixed method converts a number to a string with a fixed number of decimal places as equal to fractionDigits decimal places.
}
