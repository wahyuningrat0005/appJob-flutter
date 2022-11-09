import 'package:appjob/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 50,
            right: 30,
            left: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Build Your Next \nFuture Career Like \na Master",
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "18,000 jobs available",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: Container(
                    width: 200,
                    height: 45,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66),
                          )),
                      onPressed: () {},
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                            color: Color(0xff4141A4),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    height: 45,
                    width: 200,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(66),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => SignInPage()),
                          ),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
