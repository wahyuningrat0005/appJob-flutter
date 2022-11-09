import 'package:flutter/material.dart';

import '../theme.dart';



class ApllyButton extends StatefulWidget {
  

  @override
  State<ApllyButton> createState() => _ApllyButtonState();
}

class _ApllyButtonState extends State<ApllyButton> {
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
          onPressed: () {
            setState(() {
              
            });
          },
          style: TextButton.styleFrom(
              backgroundColor: Color(0xff4141A4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66))),
          child: Text(
            "Aplly For Job",
            style: buttonstyle,
          ),
        ),
      ),
    );
  }
}
  

