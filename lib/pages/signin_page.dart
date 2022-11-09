import 'package:appjob/pages/signup_page.dart';
import 'package:appjob/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isemailValidate = true;

  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 24,
            right: 24,
          ),
          child: ListView(
            children: [
              Text(
                "Sign In",
                style: titlestyle,
              ),
              Text(
                "Build Your Career",
                style: GoogleFonts.poppins(
                  color: Color(0xff272C2F),
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Column(children: const [
                  Image(
                    image: AssetImage('assets/images/6_work 1.png'),
                    width: 230,
                    height: 200,
                    fit: BoxFit.contain,
                  )
                ]),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Addres",
                    style: titlestyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: emailController,
                    onChanged: (value) {
                      print(value);

                      bool isValid = EmailValidator.validate(value);
                      print(isValid);

                      if (isValid) {
                        setState(() {
                          isemailValidate = true;
                        });
                      } else {
                        setState(() {
                          isemailValidate = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Color(0xfff1f0f5),
                      filled: true,
                      hintText: 'Email Addres',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: isemailValidate
                              ? Color(0xff4141A4)
                              : Color(0xffFD4F56),
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    style: TextStyle(
                      color: isemailValidate
                          ? Color(0xff4141A4)
                          : Color(0xffFD4F56),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password",
                    style: titlestyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Color(0xfff1f0f5),
                        filled: true,
                        hintText: 'Your Password',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(color: Color(0xff4141A4)))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 400,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff4141A4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66),
                          )),
                      child: Text(
                        "Sign In",
                        style: buttonstyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 80.0),
                    child: Center(
                        child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignUpPage())));
                      },
                      child: Text(
                        "Create New Account",
                        style: buttonstyle,
                      ),
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
