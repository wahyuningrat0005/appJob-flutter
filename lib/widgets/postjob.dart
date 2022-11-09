import 'package:appjob/pages/detailpostjob.dart';
import 'package:appjob/theme.dart';
import 'package:flutter/material.dart';

class JobPost extends StatelessWidget {
  final String profesi;
  final String medsos;
  final String imgUrl;
  const JobPost({
    Key key,
     this.profesi,
     this.medsos,
     this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => DetailPostJob(
                  
                )),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(imgUrl),
            width: 44,
            height: 45,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                profesi,
                style: bodystyle,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                medsos,
                style: titlestyle,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
