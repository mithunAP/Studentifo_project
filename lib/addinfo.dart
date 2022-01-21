import 'package:flutter/material.dart';
import 'package:student_info/drawer/camera_widget.dart';
import 'package:student_info/dashboard.dart';



class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<AddData> {
  final ctrlName = TextEditingController();
  final ctrlRoll = TextEditingController();
  final ctrlclass = TextEditingController();
  final ctrlemail = TextEditingController();
  final ctrlphn = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Add a heading.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            floatingActionButton: InkWell(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CameraWidget(),
                      ));
                },
                tooltip: 'Increment',
                child: Icon(
                  Icons.camera_alt,
                ),
              ),
            ), //
            body: Stack(children: [
              Container(
                padding: EdgeInsets.only(left: 35, top: 30),
                child: Text(
                  'Edit\nAccount',
                  style: TextStyle(color: Colors.white, fontSize: 55),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.2),
                  child: Column(

                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: 35, right: 35),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          controller: ctrlName,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Enter student Name",hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        keyboardType: TextInputType.number,
                      ),
              ),
              SizedBox(
                height: 30,
              ),
                      Padding(
                        padding: EdgeInsets.only(left: 35, right: 35),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          controller: ctrlRoll,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Enter Student Roll",hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        keyboardType: TextInputType.number,
                      ),
              ),
              SizedBox(
                height: 30,
              ),
                      Padding(
                        padding: EdgeInsets.only(left: 35, right: 35),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          controller: ctrlclass,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Enter student class",hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        keyboardType: TextInputType.number,
                      ),
              ),
              SizedBox(
                height: 30,
              ),
                      Padding(
                        padding: EdgeInsets.only(left: 35, right: 35),
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                            controller: ctrlemail,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Enter student Email",
                                hintStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 35, right: 35),
                        child: TextField(
                            style: TextStyle(color: Colors.black),
                            controller: ctrlphn,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Enter student phone-number",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )),
                      ),

                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 35, right: 35),
                          child: ElevatedButton(
                            child: Text("Save",style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w700),),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()));
                              addDatatoDatabase(ctrlName.text, ctrlRoll.text,
                                  ctrlclass.text, ctrlemail.text, ctrlphn.text);
                            },
                          )),

                    ],
                  ),
                  //
                ),
              )
            ])));
  }
}

addDatatoDatabase(
    String name, String roll, String studentClass, String email, String phn) {}

//Mui Rasel Hassan, mui sry mui kono kaj korte pari nai, mui antorik vabe dukhito...
