import 'package:flutter/material.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Welcome to Settings Page",
              style: TextStyle(color: Colors.deepOrange,fontSize: 30),
            )),
          ),
        ],
      ),
    );
  }
}
