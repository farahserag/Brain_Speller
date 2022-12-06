import 'package:flutter/material.dart';

Widget CustomCard({
  required String image,
}) =>
    Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      child: Container(
        width: 500,
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12)),
      ),
    );
