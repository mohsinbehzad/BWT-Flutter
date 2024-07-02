void main() {
  Address address1 = new Address('Islamabad', 'Chak Shahzad', 23, 195);
  Faculty emp1 = new Faculty('Irshad', address1, 03091932864, 'irshoo252@yahoo.com', 'Bytewise', 76000, DateTime(2023,7,1), '9 am to 5 pm', 'App Lead');
  emp1.display();
  print('\n'); //it will add two empty lines. just for better display.

  //If you want to avoid explicitly creating an Address object outside the Staff instantiation,
  //you can create the Address object directly within the Staff instantiation, as mentioned below;
  Staff emp2 = new Staff(
      'Hammad Khan',
      Address('Mardan', 'Sheikh Maltoon Town', 5, 143),                                      // Inline Address Instantiation
      03119711453,
      'hammadkhan123@gmail.com',
      'Finchums',
      59000,
      DateTime(2020, 10, 14),
      'App developer');
  emp2.display();
}

class Person {
  String _name;
  Address _address;
  int _number;
  String _email;

  Person(this._name, this._address, this._number, this._email);
}

class Student extends Person {
  // ignore: unused_field
  String _status;
  Student(String name, Address address, int number, String email, this._status)
      : super(name, address, number, email);
}

class Employee extends Person {
  String _office;
  int _salary;
  DateTime _dateHired;

  Employee(super.name, super.address, super.number, super.email, this._office,
      this._salary, this._dateHired);
}

class Faculty extends Employee {
  String _officeHours;
  String _rank;

  Faculty(super.name, super.address, super.number, super.email, super._office,
      super._salary, super._dateHired, this._officeHours, this._rank);
  void display() {
    print(
        'name:$_name \nAddress: $_address \nPhone Number: $_number \nEmail: $_email \nOffice: $_office \nSalary: $_salary \nDateHired: $_dateHired \nOfficeHours: $_officeHours \nRank: $_rank');
  }
}

class Staff extends Employee {
  String _title;

  Staff(super.name, super.address, super.number, super.email, super._office,
      super._salary, super._dateHired, this._title);
  void display() {
    print(
        'name:$_name \nAddress: $_address \nPhone Number: $_number \nEmail: $_email \nOffice: $_office \nSalary: $_salary \nDateHired: $_dateHired \nTitle: $_title');
  }
}

class Address {
  String _city;
  String _town;
  int _street;
  int _houseNum;

  Address(this._city, this._town, this._street, this._houseNum);

  @override
  String toString() {
    return 'City: $_city, Town: $_town, Street: $_street, House Number: $_houseNum';
  }
  //To ensure that the display method prints the details of the Address object rather than the default Instance of 'Address' message,
  //you need to override the toString method in the Address class. This will allow the Address object to be converted to a human-readable string when printed.
}
