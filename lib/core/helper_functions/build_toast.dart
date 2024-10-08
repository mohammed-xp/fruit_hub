import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void buildToast(BuildContext context,
    {required String message, required ToastStates state}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: chooseToastColor(state),
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

// ignore: constant_identifier_names
enum ToastStates { SUCCESS, WARNING, ERROR }

Color chooseToastColor(ToastStates state) {
  late Color color;

  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
  }

  return color;
}
