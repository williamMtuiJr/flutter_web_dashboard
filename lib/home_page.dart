import 'package:flutter/material.dart';
import 'package:nile_nini_web/constants.dart';
import 'package:nile_nini_web/feeds_page.dart';
import 'package:nile_nini_web/form_page.dart';
import 'package:nile_nini_web/hero.dart';
import 'package:nile_nini_web/settings_page.dart';
import 'dashboard_page.dart';
//import 'package:nile_nini_web/constants.dart';
//import 'package:nile_nini_web/custom_text_input.dart';
//import 'package:nile_nini_web/constants.dart';
//import 'custom_text_input.dart';
//import 'custom_appbar.dart';

class HomePage extends StatefulWidget {
  static String id = '/home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //Copied Code for Tab Controller
  TabController tabController;
  int active = 0;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 3, initialIndex: 0)
      ..addListener(() {
        setState(() {
          active = tabController.index;
        });
      });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  //End of Copied Code

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(
          color: Color(0xff696969),
        ),
        automaticallyImplyLeading:
            MediaQuery.of(context).size.width < 1900 ? true : false,
        title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 32),
                child: Text(
                  "Nile Nini",
                  style: TextStyle(
                    fontSize: 24,
                    color: kIconColour,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Google Sans',
                  ),
                ),
              ),
            ]),
        actions: <Widget>[
//          InkWell(
//            onTap: () {
//              print("download");
//            },
//            child: Container(
//              margin: EdgeInsets.all(12),
//              padding: EdgeInsets.all(8),
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(5),
//                color: Colors.white,
//              ),
//              child: Row(
//                crossAxisAlignment: CrossAxisAlignment.end,
//                children: <Widget>[
//                  Icon(
//                    Icons.cloud_download,
//                    color: Colors.black,
//                    size: 22,
//                  ),
//                  SizedBox(
//                    width: 4,
//                  ),
//                  Text(
//                    "Download Now",
//                    style: TextStyle(
//                      fontSize: 12,
//                      color: Colors.black,
//                      fontFamily: 'HelveticaNeue',
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ),
          SizedBox(width: 32),
          //Search Bar
//          Container(
//            width: 300.0,
//            child: TextField(
//              decoration: kTextFieldDecoration.copyWith(
//                hintText: 'Search',
//              ),
//            ),
//          ),
          Container(
              child: Icon(
            Icons.web,
            color: kIconColour,
          )),
          SizedBox(width: 32),
          CircleAvatar(
            backgroundColor: Color(0xfff1b60f),
            child: Text('W'),
          ),
          SizedBox(width: 32),
          Container(
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(
                Icons.exit_to_app,
                color: kIconColour,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(width: 32),
        ],
        backgroundColor: Colors.white,
        // automaticallyImplyLeading: false,
      ),
      drawer: Padding(
          padding: EdgeInsets.only(top: 56),
          child: Drawer(
            child: listDrawerItems(true),
            elevation: 2.0,
          )),
      body: Row(
        children: <Widget>[
          MediaQuery.of(context).size.width < 1300
              ? Container()
              : Card(
                  elevation: 0.0,
                  child: Container(
                      margin: EdgeInsets.all(0),
                      height: MediaQuery.of(context).size.height,
                      width: 300,
                      color: Colors.white,
                      child: listDrawerItems(false)),
                ),
          Container(
            width: MediaQuery.of(context).size.width < 1300
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width - 310,
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [
                Dashboard(),
                FormMaterial(),
                HeroAnimation(),
                //FormMaterial(),
                //HeroAnimation(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget listDrawerItems(bool drawerStatus) {
    return ListView(
      children: <Widget>[
        FlatButton(
          color: tabController.index == 0 ? Colors.grey : Colors.white,
          //color: Colors.grey[100],
          onPressed: () {
            tabController.animateTo(0);
            drawerStatus ? Navigator.pop(context) : print("");
          },

          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(
                  Icons.dashboard,
                  color: tabController.index == 0
                      ? Colors.white
                      : Color(0xff696969),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Google Sans',
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
          color: tabController.index == 1 ? Colors.grey : Colors.white,
          onPressed: () {
            print(tabController.index);
            tabController.animateTo(1);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(
                  Icons.exit_to_app,
                  color: tabController.index == 1
                      ? Colors.white
                      : Color(0xff696969),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Forms",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Google Sans',
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
          color: tabController.index == 2 ? Colors.grey : Colors.white,
          onPressed: () {
            tabController.animateTo(2);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(
                  Icons.category,
                  color: tabController.index == 2
                      ? Colors.white
                      : Color(0xff696969),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Hero",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Google Sans',
                  ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
