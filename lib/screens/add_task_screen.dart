import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_mate/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  late String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Text(
              'Add new task!',
              style: GoogleFonts.afacad(
                textStyle: TextStyle(
                  color: Color(0xff307FEC),
                  fontSize: 35.0,
                ),
              ),
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            onChanged: (value) {
              newTaskTitle = value;
            },
          ),
          SizedBox(height: 20.0),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                  color: Color(0xffEC5B5B),
                  fontSize: 35.0,
                ),
              ),
            ),
            style: ButtonStyle(
              overlayColor:
              MaterialStateProperty.all<Color>(Colors.white),
              side: MaterialStateProperty.all<BorderSide>(
                BorderSide(
                  color: Color(0xffEC5B5B),
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
