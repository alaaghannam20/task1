import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("alaa ghannam"),
      ),
      body: MyBody(),
    ));
  }
}

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            child: Text("Click"),
            onPressed: () {
              setState(() {
                Counter++;
              });
              print(Counter);
            },
          ),
          Text("$Counter"),
        ],
      ),
    );
  }
}
