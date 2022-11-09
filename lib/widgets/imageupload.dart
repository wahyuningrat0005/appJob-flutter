import 'package:flutter/material.dart';

Widget uploadImage() {
  return Center(
    child: InkWell(
      child: Column(
        children: [
          Image(
            image: AssetImage('assest/images/user_pic.png'),
            width: 230,
            height: 220,
          ),
        ],
      ),
    ),
  );
}
