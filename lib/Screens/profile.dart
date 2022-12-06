import 'package:brain_speller/Screens/Home.dart';
import 'package:brain_speller/widget/Navigate.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var g = Color.fromRGBO(123, 174, 141, 1);
  var gr = Colors.green[400];
  var b = Color.fromRGBO(117, 170, 178, 0.9);
  var w = Colors.white;
  var bl = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: g,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                navigateAndFinish(context, HomePage());
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: w,
              ))
        ],
        title: Text(
          'Edit profile',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 200,
              color: g,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/escortt.png')),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Change Profile Photo',
                      style: TextStyle(
                          fontSize: 20, color: w, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[100],
                      filled: true,
                      suffixIcon: Icon(
                        Icons.person,
                        color: b,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: b),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      hintText: ' Name',
                      //hintStyle: TextStyle(fontSize: 20)
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[100],
                      filled: true,
                      suffixIcon: Icon(
                        Icons.email,
                        color: b,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: b),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      hintText: 'Email',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[100],
                      filled: true,
                      suffixIcon: Icon(
                        Icons.edit,
                        color: b,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: b),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      hintText: 'change Password',
                      //hintStyle: TextStyle(fontSize: 20)
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[100],
                      filled: true,
                      suffixIcon: Icon(
                        Icons.phone,
                        color: b,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: b),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      hintText: 'Phone',
                      //hintStyle: TextStyle(fontSize: 20)
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: g, borderRadius: BorderRadius.circular(20)),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Container(
                            child: Text('Done',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
