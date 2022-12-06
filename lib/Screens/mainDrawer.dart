import 'package:brain_speller/Screens/Home.dart';
import 'package:brain_speller/Screens/login.dart';
import 'package:brain_speller/Screens/profile.dart';
import 'package:brain_speller/widget/Navigate.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  var g = Color.fromRGBO(123, 174, 141, 1);
  var b = Color.fromRGBO(117, 170, 178, 0.9);
  var w = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: g,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(top: 55.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/escortt.png'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Maria Alvis',
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold, color: w),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('MariaAlvis@gmail.com',
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold, color: w)),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            )),
        SizedBox(
          height: 60,
        ),
        ////////////////1
        ListTile(
          onTap: () {
            navigateAndFinish(context, HomePage());
          },
          leading: Icon(
            Icons.home,
            color: g,
            size: 20,
          ),
          title: Text(
            'Home',
            style: TextStyle(fontSize: 20, color: g),
          ),
        ),
        //////////////////////2
        ListTile(
          onTap: () {
            navigateAndFinish(context, Profile());
          },
          leading: Icon(
            Icons.group_outlined,
            color: g,
            size: 20,
          ),
          title: Text(
            'Edit Profile',
            style: TextStyle(fontSize: 20, color: g),
          ),
          ///////////////////////3
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.settings,
            color: g,
            size: 20,
          ),
          title: Text(
            'Helps',
            style: TextStyle(fontSize: 20, color: g),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(
            Icons.contact_support_outlined,
            color: g,
            size: 20,
          ),
          title: Text(
            'Contact Us',
            style: TextStyle(fontSize: 20, color: g),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        ListTile(
          onTap: () {
            navigateAndFinish(context, Login());
          },
          title: Text(
            'Log Out',
            style: TextStyle(fontSize: 20, color: g),
          ),
        ),
      ],
    );
  }
}
