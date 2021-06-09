import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset("images/child.jpeg"),
            Text("App Developer    Frontend Developer",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Helvetica",
                  fontWeight: FontWeight.bold,
                )),
            Text("Webpage Developer",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Helvetica",
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
