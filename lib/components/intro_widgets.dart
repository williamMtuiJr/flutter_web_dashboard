import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcome.\n NILE NINI WEB-SUITE',
            style: TextStyle(
                fontFamily: 'Google Sans',
                fontWeight: FontWeight.w800,
                fontSize: 80,
                height: 0.9),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
            style:
                TextStyle(fontFamily: 'Google Sans', fontSize: 21, height: 1.7),
          ),
        ],
      ),
    );
  }
}

class IntroImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: const DecorationImage(
          image: AssetImage('images/home_image3.jpg'),
          fit: BoxFit.cover,
        ),
//        border: Border.all(
//          color: Colors.white12,
//          width: 0.5,
//        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
