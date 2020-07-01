import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nile_nini_web/home_page.dart';
import 'package:nile_nini_web/login_screen.dart';
import 'constants.dart';
import 'custom_text_input.dart';

class LoginPage extends StatefulWidget {
  static String id = '/login_page';

  LoginPage({
    Key key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login_background2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Material(
            elevation: 3.0,
            child: Container(
              //color: Colors.white,
              width: 400.0,
              height: 350.0,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListTile(
                      leading: Image.asset('images/logo1.png'),
                      title: Text(
                        'N!LE⚔N!N!',
                        style: TextStyle(
                          color: kIconColour,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                          fontFamily: 'HelveticaNeue',
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CustomTextInput(
                        hintText: 'Email',
                        leading: Icons.email,
                        obscure: false,
                        keyboard: TextInputType.emailAddress,
                        userTyped: (value) {
                          email = value;
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      CustomTextInput(
                        hintText: 'Password',
                        obscure: true,
                        leading: Icons.lock,
                        userTyped: (value) {
                          password = value;
                        },
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Login.id);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: kDescriptionTextStyle,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                    child: Text(
                      'Login',
                      //style: kDescriptionTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
