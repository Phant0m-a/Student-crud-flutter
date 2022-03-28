import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/student_data.dart';




class TextTile extends StatefulWidget {
  TextTile({this.roll, this.name, this.father, this.grade, this.index});
  final String roll, name, father, grade, index;

  @override
  State<TextTile> createState() => _TextTileState();
}

class _TextTileState extends State<TextTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      hoverColor: Colors.amber,
      leading: IconButton(
          onPressed: () {
            setState(() {
              Provider.of<StudentData>(context, listen: false).deleteStudent(index:widget.index);
           
            });
          },
          icon: Icon(
            Icons.delete,
            color: Colors.greenAccent,
          )),
      title: Text(
        '${widget.roll + ' ' + widget.name + ' ' + widget.father + ' ' + widget.grade}',
        style: TextStyle(color: Colors.black54),
      ),
    );
  }
}
