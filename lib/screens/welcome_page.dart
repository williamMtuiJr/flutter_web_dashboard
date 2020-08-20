import 'package:flutter/material.dart';
import 'dashboard_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
//        NavigationBar()
//            DetailsWidget(),
            Expanded(
              child: Row(
                children: [
                  DetailsWidget(),
                  Expanded(
                    child: Center(
                      child: CallToAction(
                        title: 'Go to Dashboard',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'WELCOME TO NILE NINI.\nWEB SUITE',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 50,
              height: 0.9,
              fontFamily: 'Google Sans',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
              fontFamily: 'Google Sans',
            ),
          ),
        ],
      ),
    );
  }
}

class CallToAction extends StatelessWidget {
  final String title;
  final Function onPressed;
  const CallToAction({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 31, 229, 146),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
