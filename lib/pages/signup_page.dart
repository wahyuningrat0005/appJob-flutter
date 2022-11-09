import 'package:appjob/model/user_model.dart';
import 'package:appjob/pages/homepage.dart';
import 'package:appjob/provider/auth_provider.dart';
import 'package:appjob/provider/user-provider.dart';
import 'package:appjob/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  TextEditingController nameControl = TextEditingController();
  TextEditingController goalControl = TextEditingController();

  bool isupload = false;
  @override
  Widget uploadImage() {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            isupload = !isupload;
          });
        },
        child: Column(children: [
          Image(
            image: AssetImage('assets/images/user_pic.png'),
            width: 230,
            height: 220,
          )
        ]),
      ),
    );
  }

  Widget deafulImage() {
    return Center(
      child: InkWell(
        onTap: () {
          setState(() {
            isupload = !isupload;
          });
        },
        child: Column(
          children: [
            Image.asset(
              'assets/images/circle.png',
              width: 230,
              height: 220,
            )
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    var authprovider = Provider.of<AuthProvider>(context);
    var userprovider = Provider.of<UserProvider>(context);

    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        padding: const EdgeInsets.only(
          top: 60,
          left: 24,
          right: 24,
        ),
        children: [
          Text(
            "Sign Up",
            style: titlestyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Begin New Journey",
            style: headStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                isupload ? uploadImage() : deafulImage(),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Name",
                      style: titlestyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Color(0xfff1f0f5),
                          filled: true,
                          hintText: 'Full Name',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(66),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Email Address",
                      style: titlestyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Color(0xfff1f0f5),
                          filled: true,
                          hintText: 'Email Address',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(66),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Password",
                      style: titlestyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Color(0xfff1f0f5),
                          filled: true,
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(66),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Your Goald",
                      style: titlestyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          fillColor: Color(0xfff1f0f5),
                          filled: true,
                          hintText: 'Your Goal',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(66),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide.none)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 400,
                      height: 50,
                      child: TextButton(
                        onPressed: () async {
                          UserModel user = await authprovider.register(emailControl,nameControl);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => HomePage())));
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xff4141A4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(66),
                            )),
                        child: Text(
                          "Sign Up",
                          style: buttonstyle,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      "Come Back To Sign In",
                      style: buttonstyle,
                    )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
