import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'create_post_page.dart';

class FeedsPage extends StatefulWidget {
  static String id = '/feeds_page';

  @override
  _FeedsPageState createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CallToAction(
              title: 'Create a Post',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatePostPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
