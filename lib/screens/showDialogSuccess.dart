import 'package:attendo/screens/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum DialogAction{Confirm}
final Image DialogTitleimage = new Image (
  image : new ExactAssetImage('assets/images/TickMark.png'),
  height: 10,
  width: 28,
);
// ignore: camel_case_types
class showAttendanceMarkedSuccess{
  // ignore: non_constant_identifier_names
  static Future<DialogAction> ConfirmDialog(
      BuildContext context,
      String title,
      String courseName,
      ) async{
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: DialogTitleimage,
              content: Text("AhhhhTendo! You have Successfully marked your Attendance for \n" + courseName , style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              actions: <Widget>[
                RaisedButton(
                    onPressed: () => Navigator.of(context).pop(DialogAction.Confirm),
                    color: PrimaryColor,
                    child: const Text('Confirm')
                ),
              ]
          );
        }
    );
    return action; //change according
  }
}