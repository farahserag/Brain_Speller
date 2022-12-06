import 'package:brain_speller/Screens/PatientInfo.dart';
import 'package:brain_speller/Screens/healthTrack.dart';
import 'package:brain_speller/Screens/login.dart';
import 'package:brain_speller/Screens/mainDrawer.dart';
import 'package:brain_speller/widget/Navigate.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: b,
        ),
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: 105,
                      width: 105,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/escortt.png'),
                      ),
                    ),
                    SizedBox(
                      height: 105,
                    ),
                    //////////////////////////// 1 container//////////
                    Container(
                      height: 70,
                      width: 370,
                      decoration: BoxDecoration(
                          color: w,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: b)),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: () {
                            navigateAndFinish(context, PatientInformation());
                          },
                          child: Container(
                            // padding: EdgeInsets.only(top: 3),
                            child: Row(
                              children: [
                                Container(
                                    width: 45,
                                    height: 45,
                                    child: Image.asset('assets/info.png')),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Patient Information',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: g,
                                    //fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ///////////////////2 container////////
                    Container(
                      height: 70,
                      width: 370,
                      decoration: BoxDecoration(
                          color: w,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: b)),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: () {
                            navigateAndFinish(context, HealthTrack());
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                    width: 45,
                                    height: 45,
                                    child: Image.asset('assets/health.png')),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Patient Health',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: g,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(height: 30),
                    /////////////////////////////////////3container//////////
                    Container(
                      height: 70,
                      width: 370,
                      decoration: BoxDecoration(
                          color: w,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: b)),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: () {
                            navigateAndFinish(context, Login());
                          },
                          child: Container(
                            // padding: EdgeInsets.only(top: 3),
                            child: Row(
                              children: [
                                Container(
                                    width: 45,
                                    height: 45,
                                    child: Image.asset('assets/chat.png')),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Chat With Patient',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: g,
                                    //fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
