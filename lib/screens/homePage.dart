import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("This the Cab App with login"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello from home Page",
                  style: TextStyle(
                    backgroundColor: Colors.blueAccent,
                  )),
            ],
          ),
        ));
  }
}
