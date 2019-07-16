import 'package:flutter/material.dart';

import 'package:dealord_seller/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('DEALORD'),
            Text(
              'SELLER',
              style: TextStyle(color: Colors.red),
            )
          ]),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {},
            )
          ],
        ),
        drawer: SideDrawer(),
      ),
    );
  }
}
