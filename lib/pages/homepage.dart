import 'package:appjob/theme.dart';
import 'package:appjob/widgets/jobcard.dart';
import 'package:appjob/widgets/postjob.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(top: 40, left: 24, right: 24),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Howdy",
                  style: titlestyle,
                ),
                Text(
                  "Jason Powell",
                  style: headStyle,
                ),
              ],
            ),
            Spacer(),
            Image(
              image: AssetImage('assets/images/user_pic.png'),
              width: 58,
              height: 58,
            ),
          ],
        ),
      );
    }

    Widget category() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hot Categories",
                style: bodystyle,
              ),
              const SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JobCard(
                      text: 'Website Developer',
                      imgurl: 'assets/images/image 3.png',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    JobCard(
                      text: 'Mobile Developer',
                      imgurl: 'assets/images/image 4.png',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    JobCard(
                      text: 'App Designer',
                      imgurl: 'assets/images/image 5.png',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    JobCard(
                      text: 'Content Writer',
                      imgurl: 'assets/images/image 6.png',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    JobCard(
                      text: 'Video Grapher',
                      imgurl: 'assets/images/image 7.png',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.0,
                  top: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Just Posted",
                      style: bodystyle,
                    ),
                    SizedBox(
                      height: 30,
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
                      profesi: 'Data Scientist',
                      medsos: 'Facebook',
                      imgUrl: 'assets/images/fb.png',
                    ),
                
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: CircleNavBar(
        initIndex: 1,
        height: 60,
        circleWidth: 60,
        color: Colors.blue,
        shadowColor: Colors.deepPurple,
        elevation: 10,
        onChanged: (v) {},
        activeIcons: [
          Icon(
            Icons.home,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.notifications,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.favorite,
            color: Colors.deepPurple,
          ),
          Icon(
            Icons.person,
            color: Colors.deepPurple,
          )
        ],
        inactiveIcons: [
          Text("Home"),
          Text("Notification"),
          Text("Favorite"),
          Text("My"),
        ],
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
          bottomLeft: Radius.circular(24.0),
          bottomRight: Radius.circular(24.0),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          category(),
        ],
      ),
    );
  }
}
