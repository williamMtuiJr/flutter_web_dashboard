//import 'package:flutter_web/material.dart';
import 'package:flutter/material.dart';
//import 'package:website/screens/home/home_screen.dart';
import 'home_page.dart';
//import 'package:website/services/api_service.dart';
//import 'package:website/utils/color_constants.dart';
import '../constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Login extends StatefulWidget {
  static String id = '/login_screen';
  Login({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  String emailText;
  String passwordText;

  bool isChecked = false;
  bool showSpinner = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      onChanged: (value) {
        emailText = value;
      },
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final password = TextFormField(
      onChanged: (value) {
        passwordText = value;
      },
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final loginButton = Flexible(
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        child: RaisedButton(
          onPressed: () async {
            setState(() {
              showSpinner = true;
            });
            try {
              final user = await _auth.signInWithEmailAndPassword(
                  email: emailText, password: passwordText);
              if (user != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }
              setState(() {
                showSpinner = false;
              });
            } catch (e) {
              print(e);
            }
          },
          padding: EdgeInsets.all(10),
          color: ColorConstants.blue,
          child: Text('Log In',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  color: ColorConstants.blue,
                ),
              ],
            ),
            Center(
              child: Card(
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.all(42),
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(height: 62.0),
//                    Center(
//                        child: Text(
//                      "Admin Material",
//                      style: TextStyle(
//                        fontSize: 28,
//                        fontWeight: FontWeight.bold,
//                      ),
//                    )),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Google Sans',
                              ),
                            ),
                            Image(
                              image: AssetImage('images/logo.jpg'),
                              height: 25.0,
                              width: 25.0,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 48.0),
                      Flexible(
                        child: email,
                      ),
                      SizedBox(height: 8.0),
                      Flexible(
                        child: password,
                      ),
                      SizedBox(height: 24.0),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                    child: Checkbox(
                                      value: isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked = value;
                                        });
                                      },
                                    ),
                                  ),
                                  Flexible(child: Text("Remember Me"))
                                ],
                              ),
                            ),
                            Flexible(child: forgotLabel),
                          ],
                        ),
                      ),
                      SizedBox(height: 18.0),
                      loginButton,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
