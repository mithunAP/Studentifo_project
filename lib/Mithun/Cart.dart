import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  _CartpageState createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Welcome to Cart Page",
              style: TextStyle(color: Colors.deepOrange,fontSize: 30),
            )),
          ),
        ],
      ),
    );
  }
}
