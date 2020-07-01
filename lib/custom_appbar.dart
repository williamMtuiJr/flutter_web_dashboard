import 'package:flutter/material.dart';
//import 'constants.dart';

class CustomBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  CustomBarWidget({
    Key key,
    @required this.height,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        height: 160.0,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
//            Container(
//              color: Colors.red,
//              width: MediaQuery.of(context).size.width,
//              height: 100.0,
//              child: Center(
//                child: Text(
//                  "Home",
//                  style: TextStyle(color: Colors.white, fontSize: 18.0),
//                ),
//              ),
//            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.0),
//                  border: Border.all(
//                      color: Colors.grey.withOpacity(0.5), width: 1.0),

                  //color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          //color: Colors.red,
                        ),
                        onPressed: () {
                          print("your menu action here");
                          _scaffoldKey.currentState.openDrawer();
                        },
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        //color: Colors.red,
                      ),
                      onPressed: () {
                        print("your menu action here");
                      },
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('Nile Nini'),
                          Image.asset(
                            'images/logo1.png',
                            scale: 25.0,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 25.0,
                            //color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
