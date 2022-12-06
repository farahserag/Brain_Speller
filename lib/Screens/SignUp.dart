import 'package:brain_speller/Screens/Home.dart';
import 'package:brain_speller/Screens/login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: g),
              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(
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
                  hintText: ' Enter Your Full Name',
                  //hintStyle: TextStyle(fontSize: 20)
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ////////////////2textfield////////
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
                  hintText: ' Enter Your Email',
                  //hintStyle: TextStyle(fontSize: 20)
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ///////////////3 textfield////////
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
                  hintText: ' Enter Your Phone number',
                  //hintStyle: TextStyle(fontSize: 20)
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //////////////4textfield//////////
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  suffixIcon: Icon(
                    Icons.lock,
                    color: b,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: b),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  hintText: 'Set Password',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              /////////////5textfield/////////
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  suffixIcon: Icon(
                    Icons.lock,
                    color: b,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: b),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25)),
                  hintText: 'Confirm Password',
                ),
              ),
              SizedBox(
                height: 70,
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
                        child: Row(
                          children: [
                            Icon(
                              Icons.done_outline_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            Spacer(),
                            Text('SIGN UP',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
