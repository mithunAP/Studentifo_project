import 'package:flutter/material.dart';
import 'package:student_info/Mithun/Cart.dart';
import 'package:student_info/Mithun/Favorite.dart';
import 'package:student_info/Mithun/Home.dart';
import 'package:student_info/Mithun/Settingpage.dart';
import 'package:student_info/Mithun/categor;ypage.dart';
import 'package:student_info/Mithun/listpage.dart';

class arrows extends StatefulWidget {
  const arrows({Key? key}) : super(key: key);

  @override
  _arrowsState createState() => _arrowsState();
}

class _arrowsState extends State<arrows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arrows Page"),

      ), 
      
      backgroundColor: Color(0xffe3b813),
          body:
          Column(
            children: [
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("WELCOME ARROWS PAGE"),
              )),
            ],
          ),
      drawer:Drawer(
        
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal
              ),
                accountName: Text("Mithun Mandal"),
                accountEmail: Text("mil.timetravel@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://twitter.com/MithunC101/photo"),
              ),

            ),
            
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>home(),));
              },
            ),
            ListTile(
              title: Text('Favorite'),
              leading: Icon(Icons.favorite),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Favorite(),));
              },
            ),
            ListTile(
              title: Text('List'),
              leading: Icon(Icons.list),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Listpage(),));
              },
            ),
            ListTile(
              title: Text('Cart'),
              leading: Icon(Icons.card_travel_sharp),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Cartpage(),));
              },

            ),
            ListTile(
              title: Text('Setting'),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>setting(),));
              },
            ),
            ListTile(
              title: Text('Category'),
              leading: Icon(Icons.category),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Category(),));
              },
            ),
          ],
        ),
      ) ,

    );
  }
}