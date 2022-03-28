import 'package:actors_profile/screens/show_student.dart';
import 'package:flutter/material.dart';
import '/controllers/student_data.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AddStudent extends StatelessWidget {
  String id, name, father, grade;
  var newList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(20),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent),
              child: Column(
                children: [
                  Text(
                    'Add Student Form ',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.card_membership,
                            color: Colors.greenAccent,
                          ),
                          hintText: 'Student id'),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                      onChanged: (newvalue) {
                        if (newvalue.length > 1) {
                          id = newvalue;
                        } else {
                          id = 'null';
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.card_membership,
                            color: Colors.greenAccent,
                          ),
                          hintText: 'Student Name'),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                      onChanged: (newValue) {
                        if (newValue.length > 1) {
                          name = newValue;
                        } else {
                          name = 'null';
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.card_membership,
                            color: Colors.greenAccent,
                          ),
                          hintText: 'Student Father'),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                      onChanged: (newValue) {
                        if (newValue.length > 1) {
                          father = newValue;
                        } else {
                          father = 'null';
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.card_membership,
                            color: Colors.greenAccent,
                          ),
                          hintText: 'Student Grade'),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                      onChanged: (newValue) {
                        if (newValue.length > 1) {
                          grade = newValue;
                        } else {
                          grade = 'null';
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  MaterialButton(
                      color: Colors.white,
                      onPressed: () {
                        print('$id $name $father $grade');

                        Provider.of<StudentData>(context, listen: false)
                            .create(id, name, father, grade);
                        newList =
                            Provider.of<StudentData>(context, listen: false)
                                .getAll();
                        print(newList[0]);
                      },
                      child: Text('Add')),
                      SizedBox(height: 30),
                  MaterialButton(
                      color: Colors.white,
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) {
                        return ShowStudent();
                      })));
                      },
                      child: Text('Show Students'),
                      
                      )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
