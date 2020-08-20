import 'package:flutter/material.dart';
import './../components/table_card.dart';
import 'welcome_page.dart';

class UsersAndRolesPage extends StatefulWidget {
  @override
  _UsersAndRolesPageState createState() => _UsersAndRolesPageState();
}

class _UsersAndRolesPageState extends State<UsersAndRolesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CallToAction(
                title: 'Add',
              ),
              TableCard(),
            ],
          ),
        ),
      ),
    );
  }
}
