import 'package:flutter/material.dart';
import 'package:madhuCabApp/screens/homePage.dart';
import 'package:madhuCabApp/screens/loginPage.dart';
import 'package:madhuCabApp/screens/registerPPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // to remove the debug sign
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
        // In routes will pass key value pair String and WidgetBuilder
        routes: <String, WidgetBuilder>{
          //  To dublicate Shift+Alt+Arrow Down key
          // "/login":(BuildContext context)=>LoginPage(),
          "/login": (BuildContext context) => LoginPage(),
          "/register": (BuildContext context) => RegisterPage(),
        });
  }
}
