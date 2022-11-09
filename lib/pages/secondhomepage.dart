import 'package:appjob/theme.dart';
import 'package:appjob/widgets/postjob.dart';
import 'package:flutter/material.dart';

class SecondHomaPage extends StatelessWidget {
  final String texttitle;
  final String imgcardurl;
  const SecondHomaPage({
    Key key,
    this.imgcardurl,
    this.texttitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 270,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imgcardurl),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200, left: 24),
                      child: Text(
                        texttitle,
                        style: secondstyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 240,
                        left: 24,
                      ),
                      child: Text(
                        "12,309 available",
                        style: imagestyle,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 40,
                    left: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Big Companies",
                        style: bodystyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      JobPost(
                        profesi: 'Front-End Developer',
                        medsos: 'Google',
                        imgUrl: 'assets/images/google.png',
                      ),
                      JobPost(
                        profesi: 'UI Designer',
                        medsos: 'Instagram',
                        imgUrl: 'assets/images/ig.png',
                      ),
                      JobPost(
                          profesi: 'Data Scienstist',
                          medsos: 'facebook',
                          imgUrl: 'assets/images/fb.png'),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New Startups",
                        style: bodystyle,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      JobPost(
                        profesi: 'Front-End Developer',
                        medsos: 'Google',
                        imgUrl: 'assets/images/google.png',
                      ),
                      JobPost(
                        profesi: 'UI Designer',
                        medsos: 'Instagram',
                        imgUrl: 'assets/images/ig.png',
                      ),
                      JobPost(
                          profesi: 'Data Scienstist',
                          medsos: 'facebook',
                          imgUrl: 'assets/images/fb.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
