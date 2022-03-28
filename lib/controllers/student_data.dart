import 'package:flutter/foundation.dart';
import '/modals/students.dart';
import 'package:provider/provider.dart';

class StudentData extends ChangeNotifier {
  List<Students> StudentsList = [
    Students(roll: '1', name: 'ahsan', father: 'li', grade: 'a'),
    Students(roll: '2', name: 'an', father: 'A', grade: 'b'),
    Students(roll: '3', name: 'san', father: 'Al', grade: 'c'),
  ];

  void create(roll, name, father, grade) {
    Students newStudent =
        new Students(roll: roll, name: name, father: father, grade: grade);
    StudentsList.add(newStudent);
    notifyListeners();
  }

  List<Students> getAll() {
    return StudentsList;
  }

  void updateStudent({roll, name, father, grade, index}) {
    StudentsList[index].roll = roll;
    StudentsList[index].name = name;
    StudentsList[index].father = father;
    StudentsList[index].grade = grade;
  }

  void deleteStudent({int index}) {
    print(index);
    int i = index;
    StudentsList.removeAt(i);

    // get index using roll-no and then delete the index
    // var roll;
    // var itemIndex = StudentsList.indexOf(roll);
    // StudentsList.removeAt(itemIndex);
  }
}
