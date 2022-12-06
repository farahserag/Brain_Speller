import 'package:brain_speller/Screens/login.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var g = Color.fromRGBO(123, 174, 141, 1);
  var b = Color.fromRGBO(117, 170, 178, 0.9);
  var w = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 480,
          // width: double.infinity,
          child: Image.asset(
            'assets/headset.jpg',
            fit: BoxFit.cover,
          ),
        ),
        AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        Positioned(
            top: 430,
            left: 35,
            right: 0,
            child: Container(
                padding: EdgeInsets.all(30),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: g,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(60),
                      //   topRight: Radius.circular(radius),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'welcome to',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Brain Speller',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Where the brain can talk',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ))),
        Positioned(
          top: 590,
          right: 0,
          left: 200,
          child: Container(
            height: 60,
            // width: 80,
            decoration: BoxDecoration(
              color: b,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
            ),
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'GET STARTED ',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: w,
                        size: 25,
                      )
                    ],
                  ),
                )),
          ),
        )
      ],
    ));
  }
}
