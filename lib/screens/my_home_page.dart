import 'package:flutter/material.dart';
import 'package:nile_nini_web/components/overview_card.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './../components/intro_widgets.dart';
import './../components/table_card.dart';
import './../components/map_card.dart';
import 'package:flutter_web_scrollbar/flutter_web_scrollbar.dart';
import 'welcome_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _controller.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              controller: _controller,
              child: Column(
                children: [
                  Container(
                    child: Divider(
                      thickness: 0.3,
                      color: Colors.black38,
//                height: 10.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OverviewCard(
                          name: 'USERS',
                          value: '2390',
                          percentage: '12.5',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OverviewCard(
                          name: 'USERS',
                          value: '2,390',
                          percentage: '12.5',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OverviewCard(
                          name: 'SESSIONS',
                          value: '8,790',
                          percentage: '24.5',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OverviewCard(
                          name: 'TRAFFIC',
                          value: '8,790',
                          percentage: '12.4',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OverviewCard(
                          name: 'MEALS LOGGED',
                          value: '390',
                          percentage: '5.4',
                        ),
                      ),
                    ],
                  ),
                  Card(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 2 / 6,
                      width: MediaQuery.of(context).size.width * 3 / 4,
                      child: LineChartSample1(),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 6,
                      child: TopChatGroupsCard()),
                  Container(
                    child: TableCard(),
                  ),
                  MapCard(),
                  FlutterWebScroller(
                    //Pass a reference to the ScrollCallBack function into the scrollbar
                    scrollCallBack,

                    //Add optional values
                    scrollBarBackgroundColor: Colors.white,
                    scrollBarWidth: 20.0,
                    dragHandleColor: Colors.red,
                    dragHandleBorderRadius: 2.0,
                    dragHandleHeight: 40.0,
                    dragHandleWidth: 15.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
