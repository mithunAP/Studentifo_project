import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Welcome to Favorite Page",
              style: TextStyle(color: Colors.deepOrange,fontSize: 30),
            )),
          ),
        ],
      ),
    );
  }
}
