import 'package:actors_profile/controllers/student_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import '/screens/text_tile.dart';

class ShowStudent extends StatefulWidget {
  @override
  State<ShowStudent> createState() => _ShowStudentState();
}

class _ShowStudentState extends State<ShowStudent> {
  // var students = new StudentData().StudentsList;
  var map;

  @override
  void initState() {
    super.initState();
    // map = students.asMap();
    // for (int i = 0; i < students.length; i++) print(map[i].roll);
  }

  @override
  Widget build(BuildContext context) {
    map = Provider.of<StudentData>(context).StudentsList.asMap();
    var length = Provider.of<StudentData>(context).StudentsList.length;
    int i;
    return Scaffold(
      body: Container(
        height: 250,
        child: SafeArea(
          child: Container(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: [
                  for (i = 0; i < length - 1; i++)
                    ListTile(
                      hoverColor: Colors.amber,
                      leading: IconButton(
                          onPressed: () {
                            setState(() {
                              Provider.of<StudentData>(context, listen: false)
                                  .deleteStudent(index: i);
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.greenAccent,
                          )),
                      title: Text(
                        '${map[i].roll.toString() + ' ' + map[i].name.toString() + ' ' + map[i].father.toString() + ' ' + map[i].grade.toString()}',
                        style: TextStyle(color: Colors.black54),
                      ),
                    )

                  // TextTile(
                  //     roll: '${map[i].roll.toString()}',
                  //     name: '${map[i].name.toString()}',
                  //     father: '${map[i].father.toString()}',
                  //     grade: '${map[i].grade.toString()}',
                  //     index: '${i.toString()}')
                ],
              )),
        ),
      ),
    );
  }
}
