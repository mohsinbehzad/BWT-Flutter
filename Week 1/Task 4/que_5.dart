void main() {
  Job job1 = new Job('BPS-16, inspector', 49000, 1234);
  Employee emp1 = new Employee(job1, 'Khan');
  emp1.display();
  emp1.checkSalaryTwo(job1);
  emp1.checkSalaryTwo(emp1._job);
  emp1.checkSalary(emp1);

  Employee emp2 = new Employee(Job('BPS-17, Captain', 120000, 1001), 'Ahad');
  emp2.checkSalary(emp2);
  emp2.checkSalaryTwo(emp2._job);
}

class Job {
  String _designation;
  int _salary;
  int _id;

  Job(this._designation, this._salary, this._id);

  String get getDesignation => _designation;

  int get getSalary => _salary;

  int get getId => _id;

  set setDesignation(String designation) {
    _designation = designation;
  }

  set setSalary(int salary) {
    _salary = salary;
  }

  set setId(int id) {
    _id = id;
  }

  @override
  String toString() {
    return 'Designation: ${_designation} \nSalary: ${_salary} \nId: ${_id}';
  }
}

class Employee {
  Job _job;
  String _name;

  Employee(this._job, this._name);

  void display() {
    print(
        'Name: $_name \nDesignation: ${_job.getDesignation} \nSalary: ${_job._salary} \nId: ${_job._id}');
  }

  void checkSalary(Employee emp){
    if(emp._job.getSalary > 50000){
      print('${this._name} has greater salary than 50000');
    }
    else{
      print('${this._name} has lower salary than 50000');
    }
  }

  void checkSalaryTwo(Job job){
    if(job.getSalary > 50000){
      print('${this._name} has greater salary than 50000');
    }
    else{
      print('${this._name} has lower salary than 50000');
    }
  }
}
