import 'package:flutter/material.dart';

import '../theme.dart';



class CancelButton extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 51.0,
        left: 20,
      ),
      child: Container(
        width: 200,
        height: 45,
        child: TextButton(
          onPressed: (() {}),
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 235, 6, 37),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66))),
          child: Text(
            "Cancel For Job",
            style: buttonstyle,
          ),
        ),
      ),
    );
  }
}
