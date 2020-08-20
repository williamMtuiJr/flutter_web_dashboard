import 'package:flutter/material.dart';
import './../components/pie_chart.dart';
import './../components/overview_card.dart';
import './../components/map_card.dart';

class AdminDashboardPage extends StatefulWidget {
  @override
  _AdminDashboardPageState createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('yada'),
                  ],
                ),
              ),
              Flexible(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(child: LineChartSample2()),
                    Flexible(child: PieChartSample2()),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: Row(
                  children: [
                    Flexible(child: TopChatGroupsCard()),
                    Flexible(child: TopContentCreatorsCard()),
                    Flexible(child: MapCard()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopChatGroupsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Container(
          height: MediaQuery.of(context).size.height / 4,
          child: Column(
            children: [
              //Title and Comments
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Chat Group',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Comments',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              //The Chat Groups and Values
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Breastfeeding 101'),
                      Text('300k'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Breastfeeding 101'),
                      Text('300k'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Babies Mental Health'),
                      Text('280k'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Foods for toddlers'),
                      Text('250k'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Pregnacy 101'),
                      Text('160k'),
                    ],
                  ),
                ],
              ),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}

class TopContentCreatorsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            //Title and Comments
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Creator\'s Brand',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Likes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            //The Chat Groups and Values
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Breastfeeding 101'),
                    Text('300k'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Breastfeeding 101'),
                    Text('300k'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Babies Mental Health'),
                    Text('280k'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Foods for toddlers'),
                    Text('250k'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Pregnacy 101'),
                    Text('160k'),
                  ],
                ),
              ],
            ),
            Row(),
          ],
        ),
      ),
    );
  }
}
