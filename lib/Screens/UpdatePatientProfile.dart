import 'package:brain_speller/Screens/Home.dart';
import 'package:brain_speller/Screens/mainDrawer.dart';
import 'package:brain_speller/widget/Navigate.dart';
import 'package:flutter/material.dart';

class PatientProfile extends StatefulWidget {
  const PatientProfile({Key? key}) : super(key: key);

  @override
  State<PatientProfile> createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  var g = Color.fromRGBO(123, 174, 141, 1);
  var b = Color.fromRGBO(117, 170, 178, 0.9);
  var w = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              navigateAndFinish(context, HomePage());
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: b,
            )),
        title: Text(
          'Update Patient Profile',
          style: TextStyle(
            fontSize: 20,
            color: b,
          ),
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.transparent,
                        height: 125,
                        width: 125,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/John.png'),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Change Photo',
                        style: TextStyle(
                          fontSize: 20,
                          color: b,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ///////////////////////////1 TextField
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[100],
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: b),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Patient Name',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 9,
              ),
              ///////////////////////////2 TextField
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[100],
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: b),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Patient ID',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 9,
              ),
              ///////////////////////////3 TextField
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[100],
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: b),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Patient Gender',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 9,
              ),
              ///////////////////////////4 TextField
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[100],
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: b),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Patient Weight',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 9,
              ),
              ///////////////////////////5 TextField
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[100],
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: b),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Patient Age',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: b, borderRadius: BorderRadius.circular(20)),
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
      ),
    );
  }
}
