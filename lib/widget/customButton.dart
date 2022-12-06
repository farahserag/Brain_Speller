import 'package:brain_speller/widget/Navigate.dart';
import 'package:flutter/material.dart';

Widget customButton({
  required String image,
  required String text,
  BuildContext? context,
  Function? onpressed,
}) =>
    Container(
      height: 70,
      width: 370,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color.fromRGBO(117, 170, 178, 0.9))),
      // ignore: deprecated_member_use
      child: FlatButton(
          onPressed: () {
            navigateAndFinish(context, onpressed);
          },
          child: Container(
            child: Row(
              children: [
                Container(width: 45, height: 45, child: Image.asset(image)),
                SizedBox(
                  width: 20,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(123, 174, 141, 1),
                  ),
                ),
              ],
            ),
          )),
    );
    // Container(
    //     width: 370,
    //     height: 70,
    //     // ignore: deprecated_member_use
    //     child: FlatButton(
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.all(Radius.circular(15.0))),
    //         onPressed: () {
    //           print('Button Clicked.');
    //         },
    //         color: Colors.white,
    //         child: Padding(
    //             padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: <Widget>[
    //                 Padding(
    //                     padding: EdgeInsets.all(0),
    //                     child: Container(
    //                         width: 45, height: 45, child: Image.asset(image))),
    //                 SizedBox(
    //                   width: 7,
    //                 ),
    //                 Container(
    //                   color: Colors.transparent,
    //                   padding: EdgeInsets.all(5),
    //                   child: Text(
    //                     text,
    //                     style: TextStyle(
    //                         color: Color.fromRGBO(123, 174, 141, 1),
    //                         fontSize: 25),
    //                   ),
    //                 ),
    //               ],
    //             ))));
