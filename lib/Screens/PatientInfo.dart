import 'package:brain_speller/Screens/Home.dart';
import 'package:brain_speller/Screens/UpdatePatientProfile.dart';
import 'package:flutter/material.dart';

class PatientInformation extends StatefulWidget {
  const PatientInformation({Key? key}) : super(key: key);

  @override
  State<PatientInformation> createState() => _PatientInformationState();
}

class _PatientInformationState extends State<PatientInformation> {
  var g = Color.fromRGBO(123, 174, 141, 1);
  var b = Color.fromRGBO(117, 170, 178, 0.9);
  var w = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
              color: g,
              icon: Icon(
                Icons.arrow_back,
                color: b,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
        ],
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
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ///////////////////////////FirstTextField
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
                    hintText: 'John Alvis Smith',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 9,
              ),
              ////////////////Second TextField////////////
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
                    hintText: 'TX77701',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 9,
              ),
              ////////////////Third TextField////////////
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
                    hintText: 'Male',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 9,
              ),
              ////////////////Fouth TextField////////////
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
                    hintText: '80kg',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 9,
              ),
              ////////////////Fifth TextField////////////
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
                    hintText: '56 y',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              SizedBox(
                height: 20,
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
                                builder: (context) => PatientProfile()));
                      },
                      child: Container(
                        child: Text('Update',
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
