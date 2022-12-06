import 'package:brain_speller/Screens/Home.dart';
import 'package:brain_speller/Screens/SignUp.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var g = Color.fromRGBO(123, 174, 141, 1);
  var b = Color.fromRGBO(117, 170, 178, 0.9);
  var w = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 400,
            // width: 700,
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
            top: 340,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold, color: g),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: b),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      fillColor: Colors.grey[100],
                      filled: true,
                      suffixIcon: Icon(Icons.email, color: b),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      hintText: 'Enter Your Email',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: b),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      fillColor: Colors.grey[100],
                      filled: true,
                      suffixIcon: Icon(Icons.lock, color: b),

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      hintText: 'Set Password',
                      //labelstyle: TextStyle(fontSize: 20)
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 350,
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
                          // padding: EdgeInsets.only(top: 3),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text('Dont have an account?',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      Spacer(),
                      TextButton(
                        child: Text('Sign up',
                            style: TextStyle(fontSize: 20, color: g)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
