import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);

  @override
  _studentinfoState createState() => _studentinfoState();
}

class _studentinfoState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Info"),
      ),
      backgroundColor: Color(0xff0de8c8),
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("WELLCOME ADD PAGE"),
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
            ),
            ListTile(
              title: Text('Favorite'),
              leading: Icon(Icons.favorite),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('List'),
              leading: Icon(Icons.list),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Cart'),
              leading: Icon(Icons.card_travel_sharp),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Setting'),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text('Category'),
              leading: Icon(Icons.category),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ) ,
    );
  }
}
