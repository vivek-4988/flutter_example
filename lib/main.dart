import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My demo"),
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.pink,
              width: 100,
              alignment: Alignment.center,
              height: 100,
            ),
            Container(
              color: Colors.grey,
              width: 100,
              alignment: Alignment.center,
              height: 100,
            ),
            Container(
              color: Colors.red,
              width: 100,
              alignment: Alignment.center,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
