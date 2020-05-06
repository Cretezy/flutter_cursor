import 'package:flutter/material.dart';
import 'package:flutter_cursor/flutter_cursor.dart';

void main() => runApp(new CursorExample());

class CursorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter_cursor example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter_cursor example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: HoverCursor(
                cursor: Cursor.move,
                child: RaisedButton(
                  child: Text("Move Cursor"),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
