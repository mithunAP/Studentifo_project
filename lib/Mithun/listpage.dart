import 'package:flutter/material.dart';

class Listpage extends StatefulWidget {
  const Listpage({Key? key}) : super(key: key);

  @override
  _ListpageState createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Welcome to List Page",
              style: TextStyle(color: Colors.deepOrange,fontSize: 30),
            )),
          ),
        ],
      ),
    );
  }
}
