import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_mate/models/task_data.dart';
import 'package:todo_mate/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6FAFD),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff2E7FED),
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => AddTaskScreen(),
          );
        },
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 30.0,
              top: 60.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Text(
                        'Taasks ⏰',
                        style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            color: Color(0xffEC5B5B),
                            fontSize: 35.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${Provider.of<TaskData>(context).taskCount}*',
                      style: GoogleFonts.aladin(
                        textStyle: TextStyle(
                          color: Color(0xffEB5756),
                          fontSize: 180.0,
                        ),
                      ),
                    ),
                    Text(
                      'tasks for today🏃🏻',
                      style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                          color: Color(0xff05155F),
                          fontSize: 35.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color(0xffCFE9F7),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  topLeft: Radius.circular(25.0),
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
