import 'package:flutter/material.dart';

import './second_page.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Screen n°1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.teal
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            RaisedButton(
              child: const Text("Next Screen"),
                color: Colors.teal,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MySecondPage(title: title)
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
  
}