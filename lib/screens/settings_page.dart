import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  static String id = '/setings_page';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    decoration: InputDecoration(
      hintText: 'Email',
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.all(32.0),
            child: Column(
              children: [
                Container(
//                    height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.height * 7 / 8,
                  color: Colors.teal[100],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.height * 7 / 8,
                  child: Divider(
                    indent: 0.0,
                    thickness: 0.5,
                    color: Colors.black38,
                  ),
                ),
                email,
                email,
                email,
                Container(
//                    height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.height * 7 / 8,
                  child: Divider(
                    thickness: 0.5,
                    color: Colors.black38,
                  ),
                ),
                Center(
                  child: Container(
//                  width: 36.0,
                    margin: EdgeInsets.all(32),
                    child: RawMaterialButton(
                      child: Text(
                        'Update',
                      ),
                      onPressed: () {},
                      fillColor: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 50.0,
                        height: 35.0,
                      ),
                      elevation: 0.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
