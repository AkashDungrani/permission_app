import 'package:flutter/material.dart';
import 'package:permissionapp/view/screen/edit.dart';
import 'package:permissionapp/view/screen/homepage.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/":(context) => HomePage(),
      "edit":(context) => Edit(),
    },

  ));
}

