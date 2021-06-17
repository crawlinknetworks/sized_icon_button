import 'package:flutter/material.dart';
import 'package:sized_icon_button/sized_icon_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("DEMO"),
        ),
        body: Container(
            padding: EdgeInsets.all(16),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 16,
              children: [
                SizedIconButton(
                  icon: Icon(
                    Icons.alarm,
                  ),
                  onPressed: () {
                    print("onPressed");
                  },
                ),
                SizedIconButton(
                  color: Colors.blue,
                  icon: Icon(
                    Icons.accessible,
                    color: Colors.white,
                    size: 32,
                  ),
                  onPressed: () {
                    print("onPressed");
                  },
                ),
                SizedIconButton(
                  color: Colors.black12,
                  padding: EdgeInsets.all(4),
                  icon: Icon(
                    Icons.alarm,
                    size: 14,
                  ),
                  onPressed: () {
                    print("onPressed");
                  },
                ),
                SizedIconButton(
                  color: Colors.blue.shade100,
                  padding: EdgeInsets.all(24),
                  tooltip: 'Alarm',
                  icon: Icon(
                    Icons.alarm,
                    color: Colors.black,
                    size: 48,
                  ),
                  onPressed: () {
                    print("onPressed");
                  },
                ),
                SizedIconButton(
                  color: Colors.red,
                  icon: Icon(
                    Icons.alarm,
                    color: Colors.white,
                    size: 32,
                  ),
                  onPressed: () {
                    print("onPressed");
                  },
                ),
              ],
            )),
      ),
    );
  }
}
