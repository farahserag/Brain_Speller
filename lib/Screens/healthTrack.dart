import 'package:brain_speller/Screens/Home.dart';
import 'package:brain_speller/widget/Navigate.dart';
import 'package:brain_speller/widget/customCard.dart';
import 'package:flutter/material.dart';

class HealthTrack extends StatefulWidget {
  @override
  State<HealthTrack> createState() => _HealthTrackState();
}

class _HealthTrackState extends State<HealthTrack> {
  var g = Color.fromRGBO(123, 174, 141, 1);
  var b = Color.fromRGBO(117, 170, 178, 0.9);
  var w = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {
                navigateAndFinish(context, HomePage());
              },
              icon: Icon(Icons.arrow_back),
              color: g,
            ),
          ],
          leading: IconButton(
            onPressed: () {
              navigateAndFinish(context, HomePage());
            },
            icon: Icon(Icons.menu),
            color: g,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today Target ',
                  style: TextStyle(
                      fontSize: 25, color: b, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: [
                      CustomCard(image: 'assets/heart.jpg'),
                      CustomCard(image: 'assets/sleep.jpg'),
                      CustomCard(image: 'assets/mind.jpg'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
