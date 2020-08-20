import 'package:flutter/material.dart';
import 'package:nile_nini_web/constants.dart';
import 'dashboard_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'form_page.dart';
import 'feeds_page.dart';
import 'settings_page.dart';
import 'my_home_page.dart';
import 'contact_section.dart';
import 'welcome_page.dart';
import 'admin_dashboard.dart';

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
    tabController = new TabController(vsync: this, length: 4, initialIndex: 0)
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
        elevation: 0.50,
        iconTheme: new IconThemeData(
          color: Color(0xff696969),
        ),
        automaticallyImplyLeading:
            MediaQuery.of(context).size.width < 1900 ? true : false,
        title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50.0,
                width: 110.0,
                margin: EdgeInsets.only(
                  left: 32,
                  top: 10.0,
                ),
                child: Wrap(
                  children: <Widget>[
                    Text(
                      "Nile Nini",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Google Sans',
                      ),
                    ),
                    Text(
                      "WebSuite",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Google Sans',
                      ),
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage('images/logo.jpeg'),
                height: 40.0,
                width: 40.0,
              ),
            ]),
        actions: <Widget>[
          SizedBox(width: 32),
          SizedBox(width: 32),
          CircleAvatar(
            backgroundColor: Color(0xfff1b60f),
            child: Text('W'),
          ),
          SizedBox(width: 32),
          Container(
            child: IconButton(
              iconSize: 24.0,
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
            child: listDrawerItemsAppBar(true),
            elevation: 2.0,
          )),
      body: Row(
        children: <Widget>[
          //If the screen is less than 1300 else a tab
          MediaQuery.of(context).size.width < 1300
              ? Container()
              : Card(
                  //The Tab
                  elevation: 0.0,
                  child: Container(
                      margin: EdgeInsets.all(0),
                      height: MediaQuery.of(context).size.height,
                      width: 100,
                      color: Colors.white,
                      child: listDrawerItems(false)),
                ),
          Container(
            width: MediaQuery.of(context).size.width < 1300
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width - 110,
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: tabController,
              children: [
                HomeView(),
                MyHomePage(),
                AdminDashboardPage(),
//                Dashboard(),
//                FormMaterial(),
                FeedsPage(),
                ContactSection(),
//                SettingsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listDrawerItems(bool drawerStatus) {
    return ListView(
      children: <Widget>[
//        Container(
//          height: 20.0,
//          width: 20.0,
//        ),
        FlatButton(
//          color: tabController.index == 2 ? Color(0xFFb9b9b9) : Colors.white,
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
                  FontAwesomeIcons.home,
                  color: tabController.index == 0
                      ? Color(0xFF0f1970)
                      : Colors.black87,
                ),
//                SizedBox(
//                  width: 8,
//                ),
//                Text(
//                  "Home",
//                  style: TextStyle(
//                    fontSize: 18,
//                    fontFamily: 'Google Sans',
//                    color:
//                        tabController.index == 0 ? Colors.blue : Colors.black87,
//                  ),
//                ),
              ]),
            ),
          ),
        ),
        FlatButton(
//          color: tabController.index == 1 ? Colors.grey : Colors.white,
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
                  FontAwesomeIcons.chartLine,
                  color:
                      tabController.index == 1 ? Colors.blue : Colors.black87,
                ),
//                SizedBox(
//                  width: 8,
//                ),
//                Text(
//                  "Dashboard",
//                  style: TextStyle(
//                    fontSize: 18,
//                    fontFamily: 'Google Sans',
//                    color:
//                        tabController.index == 1 ? Colors.blue : Colors.black87,
//                  ),
//                ),
              ]),
            ),
          ),
        ),
        FlatButton(
//          color: tabController.index == 2 ? Colors.grey : Colors.white,
          onPressed: () {
            tabController.animateTo(3);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(
                  FontAwesomeIcons.map,
                  color:
                      tabController.index == 3 ? Colors.blue : Colors.black87,
                ),
//                SizedBox(
//                  width: 8,
//                ),
//                Text(
//                  "Feeds",
//                  style: TextStyle(
//                    fontSize: 18,
//                    fontFamily: 'Google Sans',
//                    color:
//                        tabController.index == 3 ? Colors.blue : Colors.black87,
//                  ),
//                ),
              ]),
            ),
          ),
        ),
        FlatButton(
//          color: tabController.index == 1 ? Colors.grey : Colors.white,
          onPressed: () {
            print(tabController.index);
            tabController.animateTo(2);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(
                  Icons.people,
                  color:
                      tabController.index == 2 ? Colors.blue : Colors.black87,
                ),
//                SizedBox(
//                  width: 8,
//                ),
//                Text(
//                  "Forms",
//                  style: TextStyle(
//                    fontSize: 18,
//                    fontFamily: 'Google Sans',
//                    color:
//                        tabController.index == 2 ? Colors.blue : Colors.black87,
//                  ),
//                ),
              ]),
            ),
          ),
        ),
        FlatButton(
//          color: tabController.index == 2 ? Colors.grey : Colors.white,
          onPressed: () {
            tabController.animateTo(4);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(
                  FontAwesomeIcons.cog,
                  color:
                      tabController.index == 4 ? Colors.blue : Colors.black87,
                ),
//                SizedBox(
//                  width: 8,
//                ),
//                Text(
//                  "Settings",
//                  style: TextStyle(
//                    fontSize: 18,
//                    fontFamily: 'Google Sans',
//                    color:
//                        tabController.index == 4 ? Colors.blue : Colors.black87,
//                  ),
//                ),
              ]),
            ),
          ),
        ),
//        Align(
//          alignment: Alignment.centerLeft,
//          child: Container(
//            padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
//            height: 200,
//            width: 230,
//            child: Image.asset('images/home_image3.jpg'),
//          ),
//        ),
      ],
    );
  }

  Widget listDrawerItemsAppBar(bool drawerStatus) {
    return ListView(
      children: <Widget>[
//        Container(
//          height: 20.0,
//          width: 20.0,
//        ),
        FlatButton(
//          color: tabController.index == 2 ? Colors.grey : Colors.white,
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
                  FontAwesomeIcons.home,
                  color:
                      tabController.index == 0 ? Colors.blue : Colors.black87,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Google Sans',
                    color:
                        tabController.index == 0 ? Colors.blue : Colors.black87,
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
//          color: tabController.index == 1 ? Colors.grey : Colors.white,
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
                  FontAwesomeIcons.chartLine,
                  color:
                      tabController.index == 1 ? Colors.blue : Colors.black87,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Google Sans',
                    color:
                        tabController.index == 1 ? Colors.blue : Colors.black87,
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
//          color: tabController.index == 1 ? Colors.grey : Colors.white,
          onPressed: () {
            print(tabController.index);
            tabController.animateTo(2);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(
                  Icons.people,
                  color:
                      tabController.index == 2 ? Colors.blue : Colors.black87,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Users & Roles",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Google Sans',
                    color:
                        tabController.index == 2 ? Colors.blue : Colors.black87,
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
//          color: tabController.index == 2 ? Colors.grey : Colors.white,
          onPressed: () {
            tabController.animateTo(3);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(
                  FontAwesomeIcons.map,
                  color:
                      tabController.index == 3 ? Colors.blue : Colors.black87,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Feeds",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Google Sans',
                    color:
                        tabController.index == 3 ? Colors.blue : Colors.black87,
                  ),
                ),
              ]),
            ),
          ),
        ),
        FlatButton(
//          color: tabController.index == 2 ? Colors.grey : Colors.white,
          onPressed: () {
            tabController.animateTo(4);
            drawerStatus ? Navigator.pop(context) : print("");
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
              child: Row(children: [
                Icon(
                  FontAwesomeIcons.cog,
                  color:
                      tabController.index == 4 ? Colors.blue : Colors.black87,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Google Sans',
                    color:
                        tabController.index == 4 ? Colors.blue : Colors.black87,
                  ),
                ),
              ]),
            ),
          ),
        ),
//        Align(
//          alignment: Alignment.centerLeft,
//          child: Container(
//            padding: EdgeInsets.only(top: 22, bottom: 22, right: 22),
//            height: 200,
//            width: 230,
//            child: Image.asset('images/home_image3.jpg'),
//          ),
//        ),
      ],
    );
  }
}

class TabBarButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final TabController tabController;
  final BuildContext context;

  get drawerStatus => null;

  const TabBarButton({
    Key key,
    @required this.tabController,
    @required this.context,
    @required this.icon,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
//          color: tabController.index == 0 ? Colors.grey : Colors.white,
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
              icon,
              color: tabController.index == 0 ? Colors.blue : Colors.black87,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Google Sans',
                color: tabController.index == 0 ? Colors.blue : Colors.black87,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
