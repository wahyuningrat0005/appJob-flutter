import 'package:appjob/pages/secondhomepage.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class JobCard extends StatelessWidget {
  final String text;
  final String imgurl;
  const JobCard({
    Key key,
     this.text,
     this.imgurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => SecondHomaPage(
                  texttitle: text,
                  imgcardurl: imgurl,
                )),
          ),
        );
      },
      child: Container(
        width: 150,
        height: 200,
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 60.0, bottom: 10.0),
          child: Text(
            text,
            style: imagestyle,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(imgurl),
          ),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.green,
              Colors.blue,
            ],
          ),
        ),
      ),
    );
  }
}
