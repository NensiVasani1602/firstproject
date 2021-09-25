import 'package:callbackapp/callbackfunction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HomePage(),));


class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    String editableText="0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Communication")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(editableText != null ? editableText : "Want To Change Text?"),
            RaisedButton(
                color: Colors.blue,
                child: Text("Next Page"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditingPage((value) {
                            return editableText = value;
                          })));
                }),
          ],
        ),
      ),
    );
  }
}