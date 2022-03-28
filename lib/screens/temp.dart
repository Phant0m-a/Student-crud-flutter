class Student {
  String roll, name;
  Student({this.roll, this.name});
}

class StudentBrain {
// List
  List<Student> studentList = [
    Student(roll: '01', name: 'ahsan'),
    Student(roll: '02', name: 'ali'),
    Student(roll: '03', name: 'ahmad'),
  ];

// Get
  List<Student> getStudentList() {
    return studentList;
  }

// Add
  void addStudent({roll, name}) {
    var newStudent = new Student(roll: roll, name: name);
    studentList.add(newStudent);
    //change notifier if provider is being used
  }

// Update
  void updateStudent({roll, name, index}) {
    studentList[index].roll = roll;
    studentList[index].name = name;
  }

// Delete
  void deleteStudent({index}) {
    studentList.removeAt(index);
  }
}

void main(List<String> args) {
  StudentBrain brain = new StudentBrain();
  var list = brain.studentList;

  print(list[0].name);
}
