import 'package:appjob/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPostJob extends StatefulWidget {

 

  @override
  State<DetailPostJob> createState() => _DetailPostJobState();
}

class _DetailPostJobState extends State<DetailPostJob> {
  bool isApllied = false;
  @override
  Widget build(BuildContext context) {
    Widget applybutton() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
        ),
        child: Container(
          width: 200,
          height: 45,
          child: TextButton(
            onPressed: () {
              setState(() {
                isApllied = !isApllied;
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

    Widget cancelbutton() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
        ),
        child: Container(
          width: 200,
          height: 45,
          child: TextButton(
            onPressed: () {
              setState(() {
                isApllied = !isApllied;
              });
            },
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

    Widget apllysucces() {
      return Container(
        width: 312,
        height: 60,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Color(0xffECEDF1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          "You have applied this job and the \nrecruiter will contact you",
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: Color(0xffA2A6B4),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              isApllied ? apllysucces() : SizedBox(),
              Image(
                image: AssetImage('assets/images/google.png'),
                width: 60,
                height: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Front-End Developer',
                style: detailstyle,
              ),
              Text(
                "Google, Inc - Jakarta",
                style: titlestyle,
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "About the job",
                      style: detailjobstyle,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Image(
                              image: AssetImage('assets/images/dot.png'),
                              width: 12,
                              height: 12,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Full-Time On Site",
                            style: requirmentjobstyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Image(
                              image: AssetImage('assets/images/dot.png'),
                              width: 12,
                              height: 12,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Start at \$18,000 per month",
                            style: requirmentjobstyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Qualifications",
                          style: detailjobstyle,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Image(
                              image: AssetImage('assets/images/dot.png'),
                              width: 12,
                              height: 12,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Candidate must possess at least a\n Bachelor's Degree.",
                            style: requirmentjobstyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Image(
                              image: AssetImage('assets/images/dot.png'),
                              width: 12,
                              height: 12,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Able to use Microsoft Office and Google \nbased service.",
                            style: requirmentjobstyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Image(
                              image: AssetImage('assets/images/dot.png'),
                              width: 12,
                              height: 12,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Have an excellent time management, \ngood at organized and details",
                            style: requirmentjobstyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Responsibilities",
                          style: detailjobstyle,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Image(
                              image: AssetImage('assets/images/dot.png'),
                              width: 12,
                              height: 12,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Initiate and promote any programs, events, \ntraining, or activities.",
                            style: requirmentjobstyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Image(
                              image: AssetImage('assets/images/dot.png'),
                              width: 12,
                              height: 12,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Assessing and anticipating needs and \ncollaborate with Division.",
                            style: requirmentjobstyle,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              isApllied ? cancelbutton() : applybutton(),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Text(
                  "Message Reqruiter",
                  style: buttonstyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
